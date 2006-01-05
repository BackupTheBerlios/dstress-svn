// $HeadURL$
// $Date$
// $Author$

// @author@	Johan Granberg <lijat.meREM@VEgmail.com>
// @date@	2006-01-03
// @uri@	news:dpee4j$m7a$1@digitaldaemon.com

module dstress.run.t.template_class_16_H;

class Alocator(T) : T {
}

typedef Alocator!(Object) GObject;

class Module {
	abstract GObject createObject();
}

class Factory(T):T {
	override GObject createObject() {
		return null;
	}
}

alias Factory!(Module) GModule;

int main(){
	GModule mod=new GModule();
	return 0;
}
