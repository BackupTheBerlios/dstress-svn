// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_fldln2_01;

int main(){
	version(D_InlineAsm){
		double f = -800.9;
		
		asm{
			fldln2;
			fstp f;
		}
		
		f -= 0.69314718055994530941723212145818L;
		
		f = (f>0) ? f : -f;
		
		assert(f < f.epsilon * 4);
		
		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}