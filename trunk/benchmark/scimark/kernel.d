// $HeadURL$
// $Date$

private import fft, sor, montecarlo, sparsematmult, lu, random, stopwatch;

class Kernel {
    double measureFFT(int N, double mintime, Random R)
    {
        Stopwatch Q = new Stopwatch();
        int cycles = 1;

        FFT fft = new FFT(R, 2*N);
        while(true) {
            Q.start();

            for(int i = 0; i < cycles; i++) {
                fft.transform();     /* forward transform */
                fft.inverse();       /* backward transform */
            }

            Q.stop();
            if(Q.read() >= mintime) break;

            cycles *= 2;
        }

        /* approx Mflops */
        return fft.flops * cycles / Q.read() * 1.0e-6;
    }

    double measureSOR(int N, double min_time, Random R)
    {
        Stopwatch Q = new Stopwatch();
        int cycles = 1;

        SOR sor = new SOR(R,N,N,1.25);
        while(1) {
            Q.start();
            sor.execute(cycles);
            Q.stop();

            if (Q.read() >= min_time) break;

            cycles *= 2;
        }

        /* approx Mflops */
        return sor.flops / Q.read() * 1.0e-6;
    }

    double measureMonteCarlo(double min_time, Random R)
    {
        Stopwatch Q = new Stopwatch();
        int cycles = 1;

        MonteCarlo mc = new MonteCarlo();
        while(1) {
            Q.start();
            mc.integrate(cycles);
            Q.stop();
            if (Q.read() >= min_time) break;

            cycles *= 2;
        }

        /* approx Mflops */
        return mc.flops / Q.read() * 1.0e-6;
    }

    double measureSparseMatMult(int N, int nz, double min_time, Random R)
    {
        Stopwatch   Q = new Stopwatch();
        int         cycles = 1;

        SparseMatMult s = new SparseMatMult(R,N,nz);
        while(true) {
            Q.start();
            s.matmult(cycles);
            Q.stop();
            if (Q.read() >= min_time) break;

            cycles *= 2;
        }

        /* approx Mflops */
        return s.flops / Q.read() * 1.0e-6;
    }

    double measureLU(int N, double min_time, Random R)
    {
        Stopwatch   Q = new Stopwatch();
        int         cycles = 1;

        LU          lu = new LU(R,N,N);
        while(true) {
            Q.start();
            for(int i = 0; i < cycles; i++) {
                lu.copy();
                lu.factor();
            }
            Q.stop();
            if (Q.read() >= min_time) break;

            cycles *= 2;
        }

        /* approx Mflops */
        return lu.flops * cycles / Q.read() * 1.0e-6;
    }
}
