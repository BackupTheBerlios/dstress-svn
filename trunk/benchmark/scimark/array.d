module scimark.array;

private import std.c.stdlib;
private import std.c.math;

double** new_Array2D_double(int M, int N)
{
    int i=0;
    int failed = 0;

    double** A = cast(double**) malloc((double*).sizeof*M);
    if (A == null)
        return null;

    for (i=0; i<M; i++)
    {
        A[i] = cast(double*) malloc(N * double.sizeof);
        if (A[i] == null)
        {
            failed = 1;
            break;
        }
    }

    /* if we didn't successfully allocate all rows of A      */
    /* clean up any allocated memory (i.e. go back and free  */
    /* previous rows) and return null                        */

    if (failed)
    {
        i--;
        for (; i<=0; i--)
            free(A[i]);
        free(A);
        return null;
    }
    else
        return A;
}

void Array2D_double_delete(int M, int N, double **A)
{
    int i;
    if (A == null) return;

    for (i=0; i<M; i++)
        free(A[i]);

    free(A);
}


void Array2D_double_copy(int M, int N, double **B, double **A)
  {

        int remainder = N & 3;       /* N mod 4; */
        int i=0;
        int j=0;

        for (i=0; i<M; i++)
        {
            double *Bi = B[i];
            double *Ai = A[i];
            for (j=0; j<remainder; j++)
                Bi[j] = Ai[j];
            for (j=remainder; j<N; j+=4)
            {
                Bi[j] = Ai[j];
                Bi[j+1] = Ai[j+1];
                Bi[j+2] = Ai[j+2];
                Bi[j+3] = Ai[j+3];
            }
        }
  }
