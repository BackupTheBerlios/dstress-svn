// $Header: /home/th/Dokumente/Entwicklung/MEIN_CVS/MiniD/src/run/types_declaration_01.d,v 1.1 2004/08/20 23:42:55 th Exp $

int main(char[][] args){
	int a;		// a is an int
	int* b;		// b is a pointer to int
	int** c;	// c is a pointer to a pointer to int
	int[] d;	// d is an array of ints
	int*[] e;	// e is an array of pointers to ints
	int[]* f;	// f is a pointer to an array of ints
	int[3] g;	// g is an array of 3 ints
	int[3][5] h;	// h is an array of 5 arrays of 3 ints
	int[3]*[5] i;	// i is an array of 5 pointers to arrays of 3 ints
	int (*j)(char);	// j is a pointer to a function taking a char argument and returning an int
	int (*[] k)(char);	// k is an array of pointers to functions taking a char argument and returning an int
	int l[3];		// l is an array of 3 ints
	int m[3][5];	// m is an array of 3 arrays of 5 ints
	int (*n[5])[3]; // n is an array of 5 pointers to arrays of 3 ints
	int o,p;		// o and p are ints
	int* q,r;		// x and y are pointers to ints
	int[] s,t;		// x and y are arrays of ints
	return 0;
}
