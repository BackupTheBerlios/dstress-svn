/* The Great Computer Language Shootout
   http://shootout.alioth.debian.org/

   http://www.bagley.org/~doug/shootout/

   converted to D by Dave Fladebo
   compile: dmd -O -inline -release matrix.d
*/

import std.stdio, std.string;

const int SIZE = 30;

void main(char[][] args)
{
    int i, n = args.length > 1 ? atoi(args[1]) : 1;

    int[][] m1 = mkmatrix(SIZE,SIZE);
    int[][] m2 = mkmatrix(SIZE,SIZE);
    int[][] mm = mkmatrix(SIZE,SIZE);

    for (i=0; i<n; i++) {
        mmult(m1, m2, mm);
    }

    writefln("%d %d %d %d",mm[0][0],mm[2][3],mm[3][2],mm[4][4]);
}

int[][] mkmatrix(int rows, int cols)
{
    int[][] m;
    int count = 1;

    m.length = rows;
    foreach(inout int[] mi; m)
    {
        mi.length = cols;
        foreach(inout int mij; mi)
        {
            mij = count++;
        }
    }

    return(m);
}

void mmult(int[][] m1, int[][] m2, int[][] m3)
{
    foreach(int i, int[] m1i; m1)
    {
        foreach(int j, inout int m3ij; m3[i])
        {
            int val;
            foreach(int k, int[] m2k; m2)
            {
                val += m1i[k] * m2k[j];
            }
            m3ij = val;
        }
    }
}
