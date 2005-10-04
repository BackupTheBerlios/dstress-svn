// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_fld2e_01;

int main(){
	version(D_InlineAsm){
		double f = -800.9;
		
		asm{
			fldl2e;
			fstp f;
		}
		
		f -= 0x1.71547652B82fE178p+0;
		
		f = (f>0) ? f : -f;
		
		assert(f < f.epsilon * 4);
		
		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}