// $HeadURL$
// $Date$
// $Author$

// @author@	Søren J. Løvborg <web@kwi.dk>
// @date@	2006-08-05
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=279

module dstress.run.c.class_25_D;

class C{
	int x = 123;

	void foo(){
		Object o = new class Object{
			this(){
				if(x != 123){
					assert(0);
				}
			}
		};
	}
}

int main(){
	C c = new C();
	c.foo();

	return 0;
}
