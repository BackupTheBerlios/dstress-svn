// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_push_01_A;

int main(){
	version(D_InlineAsm){
		ushort a= 0x12_AB;
		ushort b= 0x00_00;
		size_t p1, p2, p3;
		
		static if(size_t.sizeof==4){
			asm{
				mov p1, ESP;
				push a;
				mov p2, ESP;
				pop b;
				mov p3, ESP;
			}
		}else{
			static assert(0);
		}
		
		assert(p1==p3);
		assert(p1-2==p2);
		assert(b==0x12_AB);
		
		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}