// $HeadURL$
// $Date$

private import std.math, random, array;

class LU : Array!(double) {
private:
    double[][]  lu,A;
    int[]       pivot;
    int         M,N,minMN;

public:
    this(double[][] A)
    {
        if(A) {
            this.A = A;
            M = A.length;
            if(M) {
                N = A[0].length;
                lu = new2D(M, N);
                pivot = new int[M];
                minMN = (M < N) ? M : N;
            }
        }
    }

    this(Random R, int rows, int cols)
    {
        lu = new2D(rows, cols);
        A = R.RandomMatrix(rows, cols);
        pivot = new int[rows];
        M = rows;
        N = cols;
        minMN = (M < N) ? M : N;
    }

    double[][] Data()
    {
        return lu;
    }

    double flops()
    {
        /* rougly 2/3*N^3 */
        double Nd = N;
        return (2.0 * Nd * Nd * Nd / 3.0);
    }

    int factor()
    {
        for(int j = 0; j < minMN; j++) {
            /* find pivot in column j and test for singularity. */
            int jp = j;

            double t = fabs(lu[j][j]);
            for(int i = j + 1; i < M; i++) {
                double ab = fabs(lu[i][j]);
                if(ab > t) {
                    jp = i;
                    t = ab;
                }
            }
        
            pivot[j] = jp;

            /* jp now has the index of maximum element  */
            /* of column j, below the diagonal          */
            if(lu[jp][j] == 0) return 1;      /* factorization failed because of zero pivot */

            if(jp != j) {
                /* swap rows j and jp */
                double[] tlu = lu[j];
                lu[j] = lu[jp];
                lu[jp] = tlu;
            }

            if(j < M - 1) {                        /* compute elements j+1:M of jth column  */
                /* note A(j,j), was A(jp,p) previously which was */
                /* guarranteed not to be zero (Label #1)         */
                double recp =  1.0 / lu[j][j];
                foreach(inout double[] luK; lu[j+1 .. M]) {
                  luK[j] *= recp;
                }
            }

            if(j < minMN-1) {
                /* rank-1 update to trailing submatrix:   E = E - x*y; */
                /* E is the region A(j+1:M, j+1:N) */
                /* x is the column vector A(j+1:M,j) */
                /* y is row vector A(j,j+1:N)        */

                double* luJ = lu[j].ptr;
                for(int ii = j+1; ii < M; ii++) {
                    double* luII = lu[ii].ptr;
                    double luIIJ = luII[j];
                    for(int jj = j+1; jj < N; jj++) {
                        luII[jj] -= luIIJ * luJ[jj];
                    }
                }
            }
        }

        return 0;
    }

    void copy()
    {
        copy2D(lu,A);
    }
}
