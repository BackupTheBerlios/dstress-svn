// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_cmpeqsd_01;

int main(){
	version(D_InlineAsm){
		double a = 1.2;
		double b = 1.2;
		ulong res;
		
		asm{
			movq XMM0, a;
			cmpsd XMM0, b, 0;
			movq res, XMM0;
		}
	
		assert(res == res.max);
		
		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}