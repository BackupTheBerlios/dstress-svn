// $HeadURL$
// $Date$
// $Author$

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
	if('a' != s_c_s.c){ assert(0); }
	if(13 != s_c_s.s){ assert(0); }
	if('b' != s_c_i.c){ assert(0); }
	if(14 != s_c_i.i){ assert(0); }
	if(15 != s_s_i.s){ assert(0); }
	if(16 != s_s_i.i){ assert(0); }
	if('c' != s_c_f.c){ assert(0); }
	if(17.0 != s_c_f.f){ assert(0); }
	if(18 != s_s_f.s){ assert(0); }
	if(19.0 != s_s_f.f){ assert(0); }
	if('d' != s_c_d.c){ assert(0); }
	if(20.0 != s_c_d.d){ assert(0); }
	if(21 != s_s_d.s){ assert(0); }
	if(22.0 != s_s_d.d){ assert(0); }
	if(23 != s_i_d.i){ assert(0); }
	if(24.0 != s_i_d.d){ assert(0); }
	if(25.0 != s_f_d.f){ assert(0); }
	if(26.0 != s_f_d.d){ assert(0); }
	if('e' != s_c_ld.c){ assert(0); }
	if(27.0 != s_c_ld.ld){ assert(0); }
	if(28 != s_s_ld.s){ assert(0); }
	if(29.0 != s_s_ld.ld){ assert(0); }
	if(30 != s_i_ld.i){ assert(0); }
	if(31.0 != s_i_ld.ld){ assert(0); }
	if(32.0 != s_f_ld.f){ assert(0); }
	if(33.0 != s_f_ld.ld){ assert(0); }
	if(34.0 != s_d_ld.d){ assert(0); }
	if(35.0 != s_d_ld.ld){ assert(0); }
	return 0;
}
