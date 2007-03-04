// $HeadURL$
// $Date$
// $Author$

// @author@	teqDruid <me@teqdruid.com>
// @date@	2005-01-12
// @uri@	news:pan.2005.01.12.13.20.54.546749@teqdruid.com
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=2676

module dstress.run.opIdentity_02;

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
	assert(cast(J)b.parent is a);
	return 0;
}
