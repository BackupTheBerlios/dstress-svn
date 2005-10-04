// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_fld2t_01;

int main(){
	version(D_InlineAsm){
		real r = -800.9;
		
		asm{
			fldl2t;
			fstp r;
		}
		
		r -= 3.321928094887362347870319429489L;
		
		r = (r>0) ? r : -r;
		
		assert(r < r.epsilon * 4);
		
		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}