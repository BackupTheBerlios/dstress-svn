// $HeadURL$
// $Date$

class Array(T) {
protected:
    T[][] new2D(int rows, int cols)
    {
        T[][] A;

        A.length = rows;
        foreach(inout T[] elem; A){
            elem.length = cols;
        }

        return A;
    }

    void copy2D(T[][] dst, T[][] src)
    {
        foreach(int i, T[] row; dst) {
            foreach(int j, inout T col; row) {
                col = src[i][j];
            }
        }
    }
}
