// $HeadURL: svn://dstress.kuehne.cn/run/a/asm_add_01_C.d $
// $Date: 2005-08-20 20:24:41 +0200 (Sat, 20 Aug 2005) $
// $Author: thomask $

module dstress.run.a.asm_push_01_B;

int main(){
	version(D_InlineAsm){
		static if(size_t.sizeof==4){
			uint a= 0x12_AB_34_CD;
			uint b= 0x00_00_00_00;
			size_t p1, p2, p3;
		
			asm{
				mov p1, ESP;
				push a;
				mov p2, ESP;
				pop b;
				mov p3, ESP;
			}
		
			assert(p1==p3);
			assert(p1-4==p2);
			assert(b==0x12_AB_34_CD);
		}
		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}