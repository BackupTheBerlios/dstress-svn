// $HeadURL$
// $Date$

class Random
{
private:
    int m[17];
    int seed;
    int i;                                /* originally = 4 */
    int j;                                /* originally =  16 */
    bool haveRange;                       /* = false; */
    double left;                          /*= 0.0; */
    double right;                         /* = 1.0; */
    double width;                         /* = 1.0; */

    const int MDIG = 32;
    const int ONE = 1;

    const int m1 = (ONE << (MDIG-2)) + ((ONE << (MDIG-2) )-ONE);
    const int m2 = ONE << MDIG/2;

    /* For mdig = 32 : m1 =          2147483647, m2 =      65536
     For mdig = 64 : m1 = 9223372036854775807, m2 = 4294967296 
    */

    /* move to initialize() because  */
    /* compiler could not resolve as */
    /*   a constant.                 */

    double dm1;  /*  = 1.0 / (double) m1; */

    void initialize(int seedIn) 
    {
        int jseed, k0, k1, j0, j1, iloop;

        dm1 = 1.0 / cast(double)m1; 

        this.seed = seedIn;

        if (seed < 0 ) seed = -seed;            /* seed = abs(seed) */  
        jseed = ((seed < m1) ? seed : m1);        /* jseed = min(seed, m1) */
        if (jseed % 2 == 0) --jseed;
        k0 = 9069 % m2;
        k1 = 9069 / m2;
        j0 = jseed % m2;
        j1 = jseed / m2;
        for (iloop = 0; iloop < 17; ++iloop) {
            jseed = j0 * k0;
            j1 = (jseed / m2 + j0 * k1 + j1 * k0) % (m2 / 2);
            j0 = jseed % m2;
            m[iloop] = j0 + m2 * j1;
        }
        i = 4;
        j = 16;
    }

public:
    this(int seed)
    {
        initialize(seed);
        left = 0.0;
        right = 1.0;
        width = 1.0;
        haveRange = false;
    }

    this(int seed, double leftIn, double rightIn) 
    {
        initialize(seed);
        left = leftIn;
        right = rightIn;
        width = right - left;
        haveRange = true;
    }

    /* Returns the next random number in the sequence.  */
    double nextDouble() 
    {
        int  k;

        int  I = i;
        int  J = j;
        int* m = m;

        k = m[I] - m[J];
        if(k < 0) k += m1;
        m[J] = k;

        if(I == 0) 
            I = 16;
        else
            I--;
        i = I;

        if(J == 0) 
            J = 16 ;
        else J--;
            j = J;

        return (haveRange) ? (left + dm1 * cast(double)k * width)
		: (dm1 * cast(double) k);
    }

    double[] RandomVector(int N)
    {
        double[] x = new double[N];

        for(int i = 0; i < N; i++) {
            x[i] = nextDouble();
        }

        return x;
    }

    double[][] RandomMatrix(int M, int N)
    {
        /* allocate matrix */
        double[][] A;

        A.length = M;
        for(int i=0; i<M; i++) {
            A[i].length = N;
            for(int j=0; j<N; j++) {
                A[i][j] = nextDouble();
            }
        }

        return A;
    }
}
