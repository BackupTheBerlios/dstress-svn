//=============================================================================
//
//  OOPACK - a benchmark for comparing OOP vs. C-style programming.
//  Copyright (C) 2004 Thomas Kuehne (D port)
//  Copyright (C) 1995 Arch D. Robison
//
//  This program is free software; you can redistribute it and/or modify
//  it under the terms of the GNU General Public License as published by
//  the Free Software Foundation; either version 2 of the License, or
//  (at your option) any later version.
//
//  This program is distributed in the hope that it will be useful,
//  but WITHOUT ANY WARRANTY; without even the implied warranty of
//  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
//  GNU General Public License for more details.
//
//  For a copy of the GNU General Public License, write to the Free Software
//  Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.
//
//=============================================================================
//
// OOPACK: a benchmark for comparing OOP vs. C-style programming.
// 
// Version: 1.7
// 
// Author: Arch D. Robison (robison@kai.com)
//	   Kuck & Associates 
//	   1906 Fox Dr.
//	   Champaign IL 61820
//		
// Web Info: http://www.kai.com/oopack/oopack.html
//
// Code last revised:   November 21, 1995
// Comments last revised:  March 23, 1998
//
// This benchmark program contains a suite of tests that measure the relative 
// performance of object-oriented-programming (OOP) in C++ versus just writing
// plain C-style code in C++.  All of the tests are written so that a 
// compiler can in principle transform the OOP code into the C-style code.  
// After you run this benchmark and discover just how much you are paying to 
// use object-oriented programming, you will probably say: OOP? ACK!
// (Unless, of course, you have Kuck & Associates' C++ compiler.)
//
// TO COMPILE
//
//	Compile with your favorite D compiler.  E.g. ``dmd -O oopack.d''.
//
// TO RUN
//
//	To run the benchmark, run
//
//         ./oopack Max=50000 Matrix=500 Complex=20000 Iterator=50000
//
//	This runs the four tests for the specified number of iterations.
//	E.g., the Max test is run for 50000 iterations.  You may want to 
//	adjust the number of iterations to be small enough to get
//	an answer in reasonable time, but large enough to get a reasonably
//	accurate answer.
//
// INTERPRETING THE RESULTS
//	
//	Below is an example command line and the program's output.
//      We used an generic i686 running Linux 2.6.7 (32bit).
//
//      % gdc -O2 -frename-registers -fomit-frame-pointer -fweb -finline-functions -frelease -o oopack oopack.d
//
//	% ./oopack Iterator=10000 Complex=100 Max=100000 Matrix=1000
//      OOPACK Version 1.8
//      
//      For results on various systems and compilers, examine this Web Page:
//          http://www.kai.com/oopack/oopack.html
//      
//      Report your results by sending e-mail to oopack@kai.com.
//      For a run to be accepted, adjust the number of iterations for each test
//      so that each time reported is greater than 10 seconds.
//      
//      Send this output, along with:
//      
//           * your 
//              + name ------------------- 
//              + company/institution ---- 
//      
//           * the compiler
//              + name ------------------- 
//              + version number --------- 
//              + options used ----------- 
//      
//           * the operating system
//              + name ------------------- 
//              + version number --------- 
//      
//           * the machine
//              + manufacturer ----------- 
//              + model number ----------- 
//              + processor clock speed -- 
//              + cache memory size ------ 
//      
//                                Seconds       Mflops         
//	 Test       Iterations     C    OOP     C    OOP  Ratio
//	 ----       ----------  -----------  -----------  -----
//      Iterator        10000  0.040 2.110  500.000 9.479  52.750
//      Complex           100  0.010 125.02  80.000 0.006  12502.000
//      Max            100000  0.750 3.080  133.333 32.468  4.107
//      Matrix           1000  0.760 7.380  328.947 33.875  9.711
//
//	
// 	The ``Test'' column gives the names of the four tests that are run.  
//	The ``Iterations'' column gives the number of iterations that a test 
//	was run.  The two ``Seconds'' columns give the C-style and OOP-style
//      running times for a test.  The two ``Mflops'' columns give the
//      corresponding megaflop rates.  The ``Ratio'' column gives the ratio
//      between the times.
//
//	Beware that a low ``Ratio'' could indicate either that the OOP-style
//	code is compiled very well, or that the C-style code is compiled poorly.
//      OOPACK performance figures for KAI's C++ and some other compilers
//	can be found in http://www.kai.com/oopack/oopack.html.
//
// Revison History
//	9/17/93		Version 1.0 released
//	10/5/93		Allow results to be printed even if checksums do not match.
//	10/5/93		Increased ``Tolerance'' to allow 10-second runs on RS/6000.  
//	10/5/93 	Version 1.1 released
//      1/10/94		Change author's address from Shell to KAI
//	1/13/94		Added #define's for conditional compilation of individual tests
//	1/21/94		Converted test functions to virtual members of class Benchmark.
//     10/11/94         Added routine to inform user of command-line usage.
//     10/11/94		Version 1.5 released.
//     11/21/95		V1.6 Added "mail results to oopack@kai.com" message in output
//     11/28/95		V1.7 Added company/institution to requested information
//     11/03/04 	V1.8 Ported to D

//=============================================================================

import std.c.time, std.ctype, std.string;
version (darwin) {
	extern (C) int strtol(char *nptr, char **endptr, int base);
} else {
	extern (C) long strtol(char *nptr, char **endptr, int base);
}


//
// The ``iterations'' argument is the number of times that the benchmark 
// computation was called.  The computed checksum that ensures that the
// C-style code and OOP code are computing the same result.  This 
// variable also prevents really clever optimizers from removing the
// the guts of the computations that otherwise would be unused.
//

// Each of the following symbols must be defined to enable a test, or
// undefined to disable a test.  The reason for doing this with the
// preprocessor is that some compilers may choke on specific tests.
version=HAVE_MAX;
version=HAVE_MATRIX;
version=HAVE_COMPLEX;
version=HAVE_ITERATOR;

const int N = 1000;

//
// The variable ``Tolerance'' is the maximum allowed relative difference 
// between the C and OOP checksums.  Machines with multiply-add 
// instructions may produce different answers when they use those 
// instructions rather than separate instructions.
//
// There is nothing magic about the 32, it's just the result of tweaking.
//
const double Tolerance = 64*double.epsilon;

//
// The source-code begins with the benchmark computations themselves and
// ends with code for collecting statistics.  Each benchmark ``Foo'' is
// a class FooBenchmark derived from class Benchmark.  The relevant methods
// are:
//
//	init - Initialize the input data for the benchmark
//
//	c_style - C-style code
//
//	oop_style - OOP-style code
//
//	check - computes number of floating-point operations and a checksum.
//
const int BenchmarkListMax = 4;

class Benchmark {

//
// Benchmark::time_both
//
// Runs the C and Oop versions of a benchmark computation, and print the 
// results.
//
// Inputs
//	name = name of the benchmark
//	c_style = benchmark written in C-style code
//	oop_style = benchmark written in OOP-style code
//	check = routine to compute checksum on answer
//
void time_both( int iterations ) {
    // Run the C-style code. 
    double c_sec, c_Mflop, c_checksum;
    time_one( &c_style, iterations, c_sec, c_Mflop, c_checksum );
   
    // Run the OOP-style code. 
    double oop_sec, oop_Mflop, oop_checksum;
    time_one( &oop_style, iterations, oop_sec, oop_Mflop, oop_checksum );

    // Compute execution-time ratio of OOP to C.  This is also the 
    // reciprocal of the Megaflop ratios.                                
    double ratio = oop_sec/c_sec;
 
    // Compute the absolute and relative differences between the checksums
    // for the two codes.
    double diff = c_checksum - oop_checksum;
    double min = c_checksum < oop_checksum ? c_checksum : oop_checksum;
    double rel = diff/min;

    // If the relative difference exceeds the tolerance, print an error-message,
    // otherwise print the statistics.
    if( rel > Tolerance || rel < -Tolerance ) {
	printf( "%-10s: warning: relative checksum error of %g between C (%g) and oop (%g)\n",
	        cast(char*)name(), rel, c_checksum, oop_checksum );
    } 
    printf( "%-10s %10d  %5.3f %5.3f  %5.3f %5.3f  %5.3f\n",
	    cast(char*)name(), iterations, c_sec, oop_sec, c_Mflop, oop_Mflop, ratio );
}

//
// TimeOne
//
// Time a single benchmark computation.
//
// Inputs
//	function = pointer to function to be run and timed.
//	iterations = number of times to call function.
//
// Outputs
//	sec = Total number of seconds for calls of function.
//	Mflop = Megaflop rate of function.
//	checksum = checksum computed by function.
//     
void time_one(void delegate() function_ , int iterations, inout double sec, inout double Mflop, inout double checksum )
{
    // Initialize and run code once to load caches
    init();
    function_();

    // Initialize and run code.
    init();
    clock_t t0 = clock();
    for( int k=0; k<iterations; k++ ) 
        function_();
    clock_t t1 = clock();

    // Update checksum and compute number of floating-point operations.
    double flops;
    check( iterations, flops, checksum );

    sec = (t1-t0) / cast(double)CLOCKS_PER_SEC;
    Mflop = flops/sec*1e-6;

}
	char [] name(){
		return "dummy";
	}

    void init(){}
    void c_style(){}
    void oop_style(){}
    void check( int iterations, inout double flops, inout double checksum ){}

	static Benchmark find( char[] name ) {
		foreach(Benchmark bm; list){
			if(bm.name()==name){
				return bm;
			}
		}
		return null;
	}    
private:
	static Benchmark[] list;
	static int count;
protected:
	static this(){
		version(HAVE_MAX){
			list.length=list.length+1;
			list[list.length-1] = new MaxBenchmark();
		}
		version(HAVE_MATRIX){
			list.length=list.length+1;
			list[list.length-1] = new MatrixBenchmark();
		}
		version(HAVE_COMPLEX){
			list.length=list.length+1;
			list[list.length-1] = new ComplexBenchmark();
		}
		version(HAVE_ITERATOR){
			list.length=list.length+1;
			list[list.length-1] = new IteratorBenchmark();
		}
		debug{
			foreach(Benchmark value; list){
				printf("! SUPPORT: %.*s\n", value.name());
			}
		}
	}
}


version(HAVE_MAX){
//=============================================================================
//
// Max benchmark
//
// This benchmark measures how well a C++ compiler inlines a function that 
// returns the result of a comparison.  
//
// The functions C_Max and OOP_Max compute the maximum over a vector.
// The only difference is that C_Max writes out the comparison operation
// explicitly, and OOP_Max calls an inline function to do the comparison.
//
// This benchmark is included because some compilers do not compile 
// inline functions into conditional branches as well as they might.  
//
final class MaxBenchmark : Benchmark {

	const int M = 1000;		// Dimension of vector
	double U[M];			// The vector
	double MaxResult;		// Result of max computation

	char[] name(){
		return "Max";
	}

	void c_style(){			// Compute max of vector (C-style)
		double max = U[0];
		for( int k=1; k<M; k++ ){ // Loop over vector elements
			if( U[k] > max ) {
				max=U[k];
			}
		}
		MaxResult = max;
	}

	int Greater( double i, double j ) {
		return i>j;
	}

	void oop_style(){ 		 	// Compute max of vector (OOP-style)
		double max = U[0];
		for( int k=1; k<M; k++ ){	// Loop over vector elements
			if( Greater( U[k], max ) ) {
				max=U[k];
			}
		}
		MaxResult = max;
	}

	void init(){
		for( int k=0; k<M; k++ ){
			U[k] = k&1 ? -k : k;
		}
	}

	void check( int iterations, inout double flops, inout double checksum ){
		flops = cast(double)M*iterations;
		checksum = MaxResult;
	}
} 
} /* HAVE_MAX */

version(HAVE_MATRIX){
//=============================================================================
//
// Matrix benchmark
//
// This benchmark measures how well a C++ compiler performs constant propagation and 
// strength-reduction on classes.  C_Matrix multiplies two matrices using C-style code; 
// OOP_Matrix does the same with OOP-style code.  To maximize performance on most RISC 
// processors, the benchmark requires that the compiler perform strength-reduction and 
// constant-propagation in order to simplify the indexing calculations in the inner loop.
//
final class MatrixBenchmark : Benchmark {
	/** Dimension of (square) matrices. */
	const int L = 50;

	/** The matrices to be multiplied. */
	double[L*L] C, D, E;

	char[] name() {
		return "Matrix";
	}

	/** Compute E=C*D with C-style code. */
	void c_style() {
		for( int i=0; i<L; i++ ){
			for( int j=0; j<L; j++ ) {
				double sum = 0;
				for( int k=0; k<L; k++ ){
					sum += C[L*i+k]*D[L*k+j];
				}
				E[L*i+j] = sum;
			}
		}
	}

	/** Class Matrix represents a matrix stored in row-major format (same as C). */
	final class Matrix {
	private:
		/** Pointer to matrix data */
		double *data;
	public:
		/* Number of rows and columns */
		int rows, cols;

		this( int rows_, int cols_, double * data_ ){
			rows=rows_;
			cols=cols_;
			data=data_;
		}

		/** Access element at row i, column j */
		double value( int i, int j ) {
			return data[cols*i+j];
		}
		
		void value( int i, int j, double d){
			data[cols*i+j]=d;
		}
	}

	/** Compute E=C*D with OOP-style code. */
	void oop_style() {
		Matrix c= new Matrix( L, L, C );			// Set up three matrices
		Matrix d= new Matrix( L, L, D );
		Matrix e= new Matrix( L, L, E );
		for( int i=0; i<e.rows; i++ ){		// Do matrix-multiplication
			for( int j=0; j<e.cols; j++ ) {
				double sum = 0;
				for( int k=0; k<e.cols; k++ ){
					sum += c.value(i,k)*d.value(k,j);
				}
				e.value(i,j,sum);
			}
		}
	}

	void init(){
		for( int j=0; j<L*L; j++ ) {
			C[j] = j+1;
			D[j] = 1.0/(j+1);
		}
	}

	void check( int iterations, inout double flops, inout double checksum ){
		double sum = 0;
		for( int k=0; k<L*L; k++ ){
			sum += E[k];
		}
		checksum = sum;
		flops = 2.0*L*L*L*iterations;
	}
}
}/* HAVE_MATRIX */

version(HAVE_ITERATOR){
//=============================================================================
//
// Iterator benchmark 
//
// Iterators are a common abstraction in object-oriented programming, which
// unfortunately may incur a high cost if compiled inefficiently.
// The iterator benchmark below computes a dot-product using C-style code
// and OOP-style code.  All methods of the iterator are inline, and in 
// principle correspond exactly to the C-style code.
//
// Note that the OOP-style code uses two iterators, but the C-style
// code uses a single index.  Good common-subexpression elimination should,
// in principle, reduce the two iterators to a single index variable, or
// conversely, good strength-reduction should convert the single index into 
// two iterators!  
//
final class IteratorBenchmark : Benchmark {
	double A[N];
	double B[N];
	double IteratorResult;
    	char[] name(){
		return "Iterator";
	}

	/** Compute dot-product with C-style code */
	void c_style(){
		double sum = 0;
		foreach(int index, double valueA; A){
			sum += valueA*B[index];
		}
		IteratorResult = sum;
	}

	 /** Iterator for iterating over array of double */
	final class Iterator {
		/** Index of current element */
		int index;
		/** 1 + index of last element */
		int limit;
		/** Pointer to array */
		double * array;

		/** Get current element */
		double look() {
			return array[index];
		}
		
		/** Go to next element */
		void next() {
			index++;
		}

		/** True iff no more elements */
		int done() {
			return index>=limit;
		}

		this( double * array1, int limit1 ){
			array=array1;
			limit=limit1; 
			index=0;
		}
	}

	/** Compute dot-product with OOP-style code */
	void oop_style(){
		double sum = 0;
		Iterator ai = new Iterator(A,N);
		for( Iterator bi=new Iterator(B,N); !ai.done(); ai.next(), bi.next()){
			sum += ai.look()*bi.look();
		}
		IteratorResult = sum;
	}

	void init(){
		for( int i=0; i<N; i++ ) {
			A[i] = i+1;
			B[i] = 1.0/(i+1);
		}
	}

	void check( int iterations, inout double flops, inout double checksum ){
		flops = 2*N*iterations;
		checksum = IteratorResult;
	}
}
} /* HAVE_ITERATOR */


version(HAVE_COMPLEX){
//=============================================================================
//
// Complex benchmark
//
// Complex numbers are a common abstraction in scientific programming.
// This benchmark measures how fast they are in C++ relative to the same
// calculation done by explicitly writing out the real and imaginary parts.
// The calculation is a complex-valued ``SAXPY'' operation.
//
// The complex arithmetic is all inlined, so in principle the code should
// run as fast as the version using explicit real and imaginary parts.
//
final class ComplexBenchmark : Benchmark {
	private bool c_was_last;
	char[] name(){
		return "Complex";
	}
	
	/** Arrays used by benchmark */
	Complex[N] X, Y;
	cdouble[N] x, y;

	/** C-style complex-valued SAXPY operation */
	void c_style(){
		c_was_last=true;
		cdouble factor=0.5+0.86602540378443864676i;
		for( int k=0; k<N; k++ ) {
			y[k] = y[k] + factor*x[k];
		}
	}

	final class Complex {
		double re, im;
		this(){
		}
		this( double r, double i ){
			re=r;
			im=i;
		}

		Complex opAdd(Complex a){ 	// Complex add
			return new Complex(a.re+this.re, a.im+this.im );
		}

		Complex opMul(Complex a){ 	// Complex multiply
			return new Complex( a.re*this.re-a.im*this.im, a.re*this.im+a.im*this.re );
		}
	}

	/** OOP-style complex-valued SAXPY operation */
	void oop_style(){
		c_was_last=false;
		Complex factor=new Complex(0.5,0.86602540378443864676);
		for( int k=0; k<N; k++ ){
			Y[k] = Y[k] + factor*X[k];
		}
	}

	void init(){
		for( int k=0; k<N; k++ ) {
			X[k] = new Complex( k+1, 1.0/(k+1) );
			Y[k] = new Complex( 0, 0 );
		}
		for( int k=0; k<N; k++ ) {
                        x[k] = k+1+1.0i*(1.0/(k+1) );
                        y[k] = 0.0+0.0i;
                }
	}

	void check( int iterations, inout double flops, inout double checksum ) {
		double sum = 0;
		if(c_was_last){
			for( int k=0; k<N; k++ ){
				sum += y[k].re + y[k].im;
			}
		}else{
			for( int k=0; k<N; k++ ){
				sum += Y[k].re + Y[k].im;
                        }
		}
		checksum = sum;
		flops = 8*N*iterations;
	}
}
} /* HAVE_COMPLEX */

//=============================================================================
// End of benchmark computations.  
//=============================================================================

// handle a bug in Phobos (dmd-0.105)
version(linux){
	const double CLOCKS_PER_SEC = 1000000.0;
}else version(darwin){
	const double CLOCKS_PER_SEC = 100.0;
}


//
// The variable ``C_Seconds'' is the time in seconds in which to run the 
// C-style benchmarks.
//
double C_Seconds = 1;	

const char * Version = "D Version 1.8)"; // The OOPACK version number 

void Usage( char[][] argv) {
    printf( "Usage:\t%.*s test1=iterations1 test2=iterations2 ...\n", argv[0] ); 
    printf( "E.g.:\t%.*s Max=5000 Matrix=50 Complex=2000  Iterator=5000\n", argv[0] );
}

int main( char[][] argv) {

	// The available benchmarks are automatically put into the list of available benchmarks
	// by the constructor for Benchmark.

	// Check if user does not know command-line format.
	if( argv.length<2 ) {
		Usage( argv );
		return -1;
	}

	for( int i=1; i<argv.length; i++ ) {
		if( !isalpha(argv[i][0]) ){
			Usage( argv );
			return -2;
		}
	}

    // Print the request for results
    printf("\n");
    printf("OOPACK %s\n",Version);
    printf("\n");
printf(r"For results on various systems and compilers, examine this Web Page:
    http://www.kai.com/oopack/oopack.html

Report your results by sending e-mail to oopack@kai.com.
For a run to be accepted, adjust the number of iterations for each test
so that each time reported is greater than 10 seconds.

Send this output, along with:

     * your
        + name ------------------- 
        + company/institution ---- 

     * the compiler
        + name ------------------- 
        + version number --------- 
        + options used ----------- 

     * the operating system
        + name ------------------- 
        + version number --------- 

     * the machine
        + manufacturer ----------- 
        + model number ----------- 
        + processor clock speed -- 
        + cache memory size ------

");

    // Print header.
    printf("%-10s %10s  %11s  %11s  %5s\n", cast(char*)"", cast(char*)"", cast(char*)"Seconds  ", cast(char*)"Mflops  ", cast(char*)"" );
    printf("%-10s %10s  %5s %5s  %5s %5s  %5s\n",
	   cast(char*)"Test", cast(char*)"Iterations", cast(char*)" C ", cast(char*)"OOP", cast(char*)" C ", cast(char*)"OOP", cast(char*)"Ratio" );
    printf("%-10s %10s  %11s  %11s  %5s\n", cast(char*) "----", cast(char*)"----------", cast(char*)"-----------", cast(char*)"-----------", cast(char*)"-----" );

	for(int i=1; i<argv.length; i++ ) {
		char[][] token = std.string.split(argv[i],"=");
		if(token.length!=2){
			printf("argument %d require \"name=count\"", i-1);
		}else{
			char[] test_name=token[0];
			int test_count = cast(int) strtol(std.string.toStringz(token[1]), null, 0);
    			Benchmark b = Benchmark.find( test_name );
			if( b===null ) {
				printf("skipping non-existent test = '%.*s'\n", test_name );
			} else {
				b.time_both( test_count );
			}
		}
	}

    /* Print blank line. */
    printf("\n");

    return 0;
}
