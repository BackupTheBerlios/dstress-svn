// -*- mode: d -*-
// $HeadURL$

// http://www.functionalfuture.com/d/
// http://dada.perl.it/shootout/

import std.string;

const int SIZE = 30;

int[][] mkmatrix (int rows, int cols) {
    int count = 1;
    int[][] m; // = new int[rows][cols];
    m.length = rows;
    for (int i = 0; i < rows; i++)
        m[i].length = cols;

    for (int i=0; i<rows; i++) {
        for (int j=0; j<cols; j++) {
        m[i][j] = count++;
        }
    }
    return(m);
}

void mmult (int rows, int cols, 
                      int[][] m1, int[][] m2, int[][] m3) {
    for (int i=0; i<rows; i++) {
        for (int j=0; j<cols; j++) {
            int val = 0;
            for (int k=0; k<cols; k++) {
                val += m1[i][k] * m2[k][j];
            }
            m3[i][j] = val;
        }
    }
}

int main(char[][] args) {        
    int n = args.length < 2 ? 1 : std.string.atoi(args[1]);
    int[][] m1 = mkmatrix(SIZE, SIZE);
    int[][] m2 = mkmatrix(SIZE, SIZE);
    int[][] mm; // = new int[SIZE][SIZE];
    
    mm.length = SIZE;
    for (int i = 0; i < SIZE; i++)
        mm[i].length = SIZE;

    for (int i=0; i<n; i++)
        mmult(SIZE, SIZE, m1, m2, mm);
    
    printf("%d %d %d %d\n", mm[0][0], mm[2][3], mm[3][2], mm[4][4]);
    return 0;
}


