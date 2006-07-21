// $HeadURL$
// $Date$
// $Author$

// @author@	Sean Kelly <sean@f4.ca>
// @date@	2006-02-09
// @uri@	news:dsgai7$2cvr$1@digitaldaemon.com

module dstress.run.a.alias_31_C;

class ClassOf(Type){
	class ClassOf{
		Type val;

		template ref(){
			alias val ref;
		}
	}
}

int main(){
	auto c = new ClassOf!(int)();
	int x = 3;

	c.ref!() = x;

	if(c.ref!() == 3){
		return 0;
	}
}

