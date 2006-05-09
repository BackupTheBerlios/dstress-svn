// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_DFLAGS__ addon/cpuinfo.d

module dstress.run.a.asm_fld2t_01;
import addon.cpuinfo;

int main(){
	version(D_InlineAsm){
		haveFPU!()();
		
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
		pragma(msg, "no inline asm support");
		static assert(0);
	}
}