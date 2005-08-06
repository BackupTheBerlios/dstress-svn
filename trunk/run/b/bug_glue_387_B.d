// $HeadURL$
// $Date$
// $Author$

// @author@	Sean Kelly <sean@f4.ca>
// @date@	2005-08-01
// @uri@	news:dclojd$6ak$1@digitaldaemon.com
// @desc@	Assertion failure: '!v->csym' on line 387 in file 'glue.c'

module dstress.run.b.bug_glue_387_B;

enum msync{
    acq,
    rel,
}

template atomicStore(T, msync ms){
	 void atomicStore(T val){
		asm{
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
		assert(atom.m_val == base);
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