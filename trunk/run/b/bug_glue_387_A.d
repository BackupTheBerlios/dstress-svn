// $HeadURL$
// $Date$
// $Author$

// @author@	Sean Kelly <sean@f4.ca>
// @date@	2005-08-01
// @uri@	news:dclojd$6ak$1@digitaldaemon.com
// @desc@	Assertion failure: '!v->csym' on line 387 in file 'glue.c'

module dstress.run.b.bug_glue_387_A;

version(D_InlineAsm_X86){
}else version(D_InlineAsm_X86_64){
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}

enum msync{
	acq,
	rel,
}

template atomicStore(T, msync ms){
	 void atomicStore(T val){
		volatile asm{
			mov EAX, val;
		}
	}
}

struct Atomic(T){
	template store(msync ms){
		void store(){
			atomicStore!(T, ms)(m_val);
		}
	}

	T m_val;
}

template testStore(T, msync ms){
	void testStore(){
		T base;
		Atomic!(T) atom;
		if(atom.m_val != base){
			assert(0);
		}
		atom.store!(ms)();
	}
}

template testType(T){
	void testType(){
		testStore!(T, msync.acq)();
		testStore!(T, msync.rel)();
	}
}

int main(){
	testType!(int)();
	return 0;
}
