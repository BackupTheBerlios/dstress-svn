// $HeadURL$
// $Date$
// $Author$

// @author@	teqDruid <me@teqdruid.com>
// @date@	2005-01-12
// @uri@	news:pan.2005.01.12.13.20.54.546749@teqdruid.com
// @url@	nntp://news.digitalmars.com/digitalmars.D.bugs/2676

module dstress.run.opIdentity_022;

interface I {
	I parent();
	void parent(I i);
	void addChild(I i);
}

interface J : I {
}

class A : I {
	private I myParent;
	
	void addChild(I i) {
		i.parent = this;
        }

	I parent() {
		return myParent;
	}
        
	void parent(I parent) { 
		myParent = parent;
	}
}

class B : A, J {
}

int main() {
 	J a = new B;
	J b = new B;
	a.addChild(b);
	assert(cast(J)b.parent === a);
	return 0;
}
