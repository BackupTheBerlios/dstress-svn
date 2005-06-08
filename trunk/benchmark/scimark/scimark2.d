// $HeadURL$
// $Date$

const float VERSION = 2.0;

private import std.stdio, std.c.stdlib, std.string, constants, kernel, random;

int main(char[][] argv)
{
    Constants constants;

    /* default to the (small) cache-contained version */
    double min_time = constants.RESOLUTION_DEFAULT;

    int FFT_size = constants.FFT_SIZE;
    int SOR_size =  constants.SOR_SIZE;
    int Sparse_size_M = constants.SPARSE_SIZE_M;
    int Sparse_size_nz = constants.SPARSE_SIZE_nz;
    int LU_size = constants.LU_SIZE;

    /* run the benchmark */

    double res[6];
    Random R = new Random(constants.RANDOM_SEED);

    if(argv is null || argv.length > 1) {
        int current_arg = 1;

        if(argv[1]=="-help" || argv[1]=="-h") {
            fprintf(stderr, "Usage: [-large] [minimum_time]\n");
            exit(0);
        }

        if(argv[1] == "-large") {
            FFT_size = constants.LG_FFT_SIZE;
            SOR_size = constants.LG_SOR_SIZE;
            Sparse_size_M = constants.LG_SPARSE_SIZE_M;
            Sparse_size_nz = constants.LG_SPARSE_SIZE_nz;
            LU_size = constants.LG_LU_SIZE;
            current_arg++;
		}

        if(current_arg+1 < argv.length) {
            min_time = std.string.atof(argv[current_arg]);
        }	
    }

    print_banner();
    printf("Using %10.2f seconds min time per kernel.\n", min_time);

    Kernel kernel = new Kernel;
    res[1] = kernel.measureFFT( FFT_size, min_time, R);   
    res[2] = kernel.measureSOR( SOR_size, min_time, R);   
    res[3] = kernel.measureMonteCarlo(min_time, R); 
    res[4] = kernel.measureSparseMatMult( Sparse_size_M, Sparse_size_nz, min_time, R);           
    res[5] = kernel.measureLU( LU_size, min_time, R);  

    res[0] = (res[1] + res[2] + res[3] + res[4] + res[5]) / 5;

    /* print out results  */
    printf("Composite Score:        %8.2f\n" ,res[0]);
    printf("FFT             Mflops: %8.2f    (N=%d)\n", res[1], FFT_size);
    printf("SOR             Mflops: %8.2f    (%d x %d)\n", res[2], SOR_size, SOR_size);
    printf("MonteCarlo      Mflops: %8.2f\n", res[3]);
    printf("Sparse matmult  Mflops: %8.2f    (N=%d, nz=%d)\n", res[4], Sparse_size_M, Sparse_size_nz);
    printf("LU              Mflops: %8.2f    (M=%d, N=%d)\n", res[5], LU_size, LU_size);

    return 0;  
}

void print_banner()
{
    printf("**                                                              **\n");
    printf("** SciMark2 Numeric Benchmark, see http://math.nist.gov/scimark **\n");
    printf("** for details. (Results can be submitted to pozo@nist.gov)     **\n");
    printf("**                                                              **\n");
}
