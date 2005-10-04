// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_fldpi_01;

int main(){
	version(D_InlineAsm){
		double f = -800.9;
		
		asm{
			fldpi;
			fstp f;
		}
		
		f -= 0x1.921FB54442D1846Ap+1;
		
		f = (f>0) ? f : -f;
		
		assert(f < f.epsilon * 4);
		
		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}