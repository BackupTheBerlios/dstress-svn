// $HeadURL$
// $Date$

private import random;

/* multiple iterations used to make kernel have roughly
    same granularity as other Scimark kernels. */

class SparseMatMult {
private:
    double[]    x, y, val;
    int[]       row, col;
    int         N, nz, iterations;

public:
    this(double[] x, double[] val, int nz)
    {
        int size = 0;
        if(x && val) {
            this.x = x;
            size = x.length;
            this.val = val;
        }
        this(null,size,nz);
    }

    this(double[] x, double[] val, int nz, int cycles)
    {
        this(x,val,nz);
        this.cycles = cycles;
    }

    this(Random R, int size, int nz)
    {
        if(size < 1 || nz < 1) return;

        this.N = size;
        this.nz = nz;

        /* initialize vector multipliers and storage for result */
        /* y = A*y;  */

        if(R && !x) x = R.RandomVector(N);
        y = new double[N];

        // initialize square sparse matrix
        //
        // for this test, we create a sparse matrix with N/nz nonzeros
        // per row, with spaced-out evenly between the begining of the
        // row to the main diagonal.  Thus, the resulting pattern looks
        // like
        //             +-----------------+
        //             +*                +
        //             +***              +
        //             +* * *            +
        //             +** *  *          +
        //             +**  *   *        +
        //             +* *   *   *      +
        //             +*  *   *    *    +
        //             +*   *    *    *  + 
        //             +-----------------+
        //
        // (as best reproducible with integer artihmetic)
        // Note that the first nr rows will have elements past
        // the diagonal.

        int         nr  = nz / N;    /* average number of nonzeros per row  */

        if(R && !val) {
            int anz = nr * N;    /* _actual_ number of nonzeros         */
            val = R.RandomVector(anz);
        }
        col = new int[nz];
        row = new int[N+1];

        for(int r = 0; r < N; r++) {
            /* initialize elements for row r */

            int rowr = row[r];
            int step = r / nr;
            int i = 0;

            row[r+1] = rowr + nr;
            if (step < 1) step = 1;   /* take at least unit steps */

            for (i=0; i < nr; i++) {
                col[rowr+i] = i*step;
            }
        }
    }

    this(Random R, int size, int nz, int cycles)
    {
        this(R, size, nz);
        this.cycles = cycles;
    }

    double[] Data()
    {
        return y;
    }

    double flops()
    {
        /* Note that if nz does not divide N evenly, then the
           actual number of nonzeros used is adjusted slightly.
        */
        int actual_nz = (nz/N) * N;
        return (cast(double)actual_nz) * 2.0 * (cast(double)iterations);
    }

    /* computes  a matrix-vector multiply with a sparse matrix
        held in compress-row format.  If the size of the matrix
        in MxN with nz nonzeros, then the val[] is the nz nonzeros,
        with its ith entry in column col[i].  The integer vector row[]
        is of size N+1 and row[i] points to the begining of the
        ith row in col[].  
    */

    int cycles(int cycles)
    {
        return iterations = cycles;
    }

    void matmult(int cycles)
    {
        this.cycles = cycles;
        matmult();
    }

    void matmult()
    {
        for(int reps = 0; reps < iterations; reps++) {
            for(int r = 0; r < N; r++) {
                double sum = 0.0;
                int rowR = row[r];
                int rowRp1 = row[r+1];
                for(int i = rowR; i < rowRp1; i++) {
                    sum += x[ col[i] ] * val[i];
                }
                y[r] = sum;
            }
        }
    }
}
