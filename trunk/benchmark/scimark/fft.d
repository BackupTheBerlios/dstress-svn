// $HeadURL$
// $Date$

private import std.c.stdlib, std.math, random;

/*-----------------------------------------------------------------------*/

class FFT {
    this(double[] data)
    {
        if(data) {
            this.data = data;
            N = data.length;
        }
    }

    this(Random R, int size) {
        data = R.RandomVector(size);
        N = size;
    }

    void transform()
    {
        transform(-1);
    }

    void inverse()
    {
        transform(+1);

        /* Normalize */

        double norm = 1 / (cast(double) N / 2);
        foreach(inout double val; data) {
            val *= norm;
        }
    }

    double[] Data()
    {
        return data;
    }

    double flops()
    {
        double Nd = cast(double)N;
        double logN = cast(double)int_log2(N);

        return (5.0 * Nd-2) * logN + 2 * (Nd + 1);
    }

private:
    double[]    data;
    int         N;

    int int_log2(int n)
    {
        int log;
        for(int k = 1; k < n; k *= 2, log++){}
        if (n != (1 << log)) {
            printf("FFT: Data length is not a power of 2!: %d ",n);
            exit(1);
        }
        return log;
    }

    void transform(int direction)
    {
        if(N == 0) return;    

        int n = N/2, logn = int_log2(n);

        if(n == 1) return;         /* Identity operation! */

        /* bit reverse the input data for decimation in time algorithm */
        bitreverse();

        /* apply fft recursion */
        /* this loop executed int_log2(N) times */
        for(int bit_ = 0, dual = 1; bit_ < logn; bit_++, dual *= 2) {
            double w_real = 1.0, w_imag = 0.0;

            double theta = 2.0 * direction * PI / (2.0 * cast(double) dual);
            double s = sin(theta);
            double t = sin(theta / 2.0);
            double s2 = 2.0 * t * t;

            for(int a=0, b = 0; b < n; b += 2 * dual) {
                int i = 2*b;
                int j = 2*(b + dual);

                double wd_real = data[j];
                double wd_imag = data[j+1];

                data[j]    = data[i]   - wd_real;
                data[j+1]  = data[i+1] - wd_imag;
                data[i]   += wd_real;
                data[i+1] += wd_imag;
            }

            /* a = 1 .. (dual-1) */
            for(int a = 1; a < dual; a++) {
                /* trignometric recurrence for w-> exp(i theta) w */
                {
                    double tmp_real = w_real - s * w_imag - s2 * w_real;
                    double tmp_imag = w_imag + s * w_real - s2 * w_imag;
                    w_real = tmp_real;
                    w_imag = tmp_imag;
                }

                for(int b = 0; b < n; b += 2 * dual) {
                    int i = 2*(b + a);
                    int j = 2*(b + a + dual);

                    double z1_real = data[j];
                    double z1_imag = data[j+1];
              
                    double wd_real = w_real * z1_real - w_imag * z1_imag;
                    double wd_imag = w_real * z1_imag + w_imag * z1_real;

                    data[j]   = data[i]   - wd_real;
                    data[j+1] = data[i+1] - wd_imag;
                    data[i]  += wd_real;
                    data[i+1]+= wd_imag;
                }
            }
        }
    }

    void bitreverse()
    {
        /* This is the Goldrader bit-reversal algorithm */
        int n = N/2;
        int nm1 = n-1;

        for(int i = 0, j = 0; i < nm1; i++) {

            /*int ii = 2*i; */
            int ii = i << 1;

            /*int jj = 2*j; */
            int jj = j << 1;

            /* int k = n / 2 ; */
            int k = n >> 1;

            if (i < j) {
                double tmp_real    = data[ii];
                double tmp_imag    = data[ii+1];
                data[ii]   = data[jj];
                data[ii+1] = data[jj+1];
                data[jj]   = tmp_real;
                data[jj+1] = tmp_imag;
            }

            while (k <= j) {
                /*j = j - k ; */
                j -= k;

                /*k = k / 2 ;  */
                k >>= 1 ; 
            }

            j += k;
        }
    }
}
