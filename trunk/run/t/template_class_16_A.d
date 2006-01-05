// $HeadURL$
// $Date$
// $Author$

// @author@	Johan Granberg <lijat.meREM@VEgmail.com>
// @date@	2006-01-03
// @uri@	news:dpee4j$m7a$1@digitaldaemon.com

module dstress.run.t.template_class_16_A;

class Module {
	abstract GObject createObject();
}

class Factory(T):T {
	override GObject createObject() {
		return null;
	}
}

class Alocator(T) : T {
}

typedef Alocator!(Object) GObject;
typedef Factory!(Module) GModule;

int main(){
	GModule mod=new GModule();
	return 0;
}
