// copied from gcc-3.4.2/gcc/testsuite/gcc.c-torture/execute/align-2.c
module dstress.run.align_07;

/* Simple alignment checks;
   looking for compiler/assembler alignment disagreements,
   agreement between struct initialization and access.  */

struct a_short { char c; short s; }
static a_short s_c_s = { 'a', 13 };

struct a_int { char c ; int i; } 
static a_int s_c_i = { 'b', 14 };

struct b_int { short s; int i; } 
b_int s_s_i  = { 15, 16 };

struct a_float { char c; float f; } 
a_float s_c_f = { 'c', 17.0 };

struct b_float { short s; float f; } 
b_float s_s_f = { 18, 19.0 };

struct a_double { char c; double d; } 
a_double s_c_d = { 'd', 20.0 };

struct b_double { short s; double d; } 
b_double s_s_d = { 21, 22.0 };

struct c_double { int i; double d; }
c_double s_i_d = { 23, 24.0 };

struct d_double { float f; double d; }
d_double s_f_d = { 25.0, 26.0 };

struct a_real { char c; real ld; } 
a_real s_c_ld = { 'e', 27.0 };

struct b_real { short s; real ld; }
b_real s_s_ld = { 28, 29.0 };

struct c_real { int i; real ld; } 
c_real s_i_ld = { 30, 31.0 };

struct d_real { float f; real ld; } 
d_real s_f_ld = { 32.0, 33.0 };

struct e_real { double d; real ld; } 
e_real s_d_ld = { 34.0, 35.0 };

int main (){
	assert(s_c_s.c == 'a');
	assert(s_c_s.s == 13);
	assert(s_c_i.c == 'b');
	assert(s_c_i.i == 14);
	assert(s_s_i.s == 15);
	assert(s_s_i.i == 16);
	assert(s_c_f.c == 'c');
	assert(s_c_f.f == 17.0);
	assert(s_s_f.s == 18);
	assert(s_s_f.f == 19.0);
	assert(s_c_d.c == 'd');
	assert(s_c_d.d == 20.0);
	assert(s_s_d.s == 21);
	assert(s_s_d.d == 22.0);
	assert(s_i_d.i == 23);
	assert(s_i_d.d == 24.0);
	assert(s_f_d.f == 25.0);
	assert(s_f_d.d == 26.0);
	assert(s_c_ld.c == 'e');
	assert(s_c_ld.ld == 27.0);
	assert(s_s_ld.s == 28);
	assert(s_s_ld.ld == 29.0);
	assert(s_i_ld.i == 30);
	assert(s_i_ld.ld == 31.0);
	assert(s_f_ld.f == 32.0);
	assert(s_f_ld.ld == 33.0);
	assert(s_d_ld.d == 34.0);
	assert(s_d_ld.ld == 35.0);
	return 0;
}
