// $HeadURL$
// $Date$

private import random;

class SOR {
private:
    double[][]  data;
    double      omega;
    int         M, N, iterations;

public:
    this(double[][] data, double omega)
    {
        if(data) {
            this.data = data;
            M = data.length;
            if(M) {
                N = data[0].length;
                this.omega = omega;
            }
        }
    }

    this(double[][] data, double omega, int cycles)
    {
        this(data,omega);
        this.cycles = cycles;
    }

    this(Random R, int rows, int cols, double omega)
    {
        data = R.RandomMatrix(rows, cols);
        this.M = rows;
        this.N = cols;
        this.omega = omega;
    }

    this(Random R, int rows, int cols, double omega, int cycles)
    {
        this(R, rows, cols, omega);
        this.cycles = cycles;
    }

    int cycles(int cycles)
    {
        return iterations = cycles;
    }

    double[][] Data()
    {
        return data;
    }

    double flops()
    {
        double Md = cast(double)M;
        double Nd = cast(double)N;
        double num_iterD = cast(double)iterations;

        return (Md-1) * (Nd-1) * num_iterD * 6.0;
    }

    void execute(int cycles)
    {
        this.cycles = cycles;
        execute();
    }

    void execute()
    {
        double omega_over_four = omega * 0.25;
        double one_minus_omega = 1.0 - omega;

        /* update interior points */
        int Mm1 = M - 1;
        int Nm1 = N - 1;

        for(int p = 0; p < iterations; p++) {
            for(int i = 1; i < Mm1; i++) {
                double* dataI = data[i];
                double* dataIm1 = data[i-1];
                double* dataIp1 = data[i+1];
                for(int j = 1; j < Nm1; j++) {
                    dataI[j] = omega_over_four * (dataIm1[j] + dataIp1[j] + dataI[j-1] + dataI[j+1]) + one_minus_omega * dataI[j];
                }
            }
        }
    }
}
