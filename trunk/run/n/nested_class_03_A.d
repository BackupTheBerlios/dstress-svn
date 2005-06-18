// $HeadURL$
// $Date$
// $Author$

// @author@	John C <johnch_atms@hotmail.com>
// @date@	2005-06-09
// @uri@	news:d88vta$vak$1@digitaldaemon.com

module dstress.run.n.nested_class_03_A;

interface Inner{
	int value();		
}

class Outer{
	int x;

	Inner test(){
		return new class Inner {
			int y;

			this(){
				y=x;
			}

			int value(){
				return y;
			}
		};
	}
}

int main(){
	Outer o = new Outer();
	o.x=2;	
	assert(o.test().value() == o.x);
	return 0;
}
