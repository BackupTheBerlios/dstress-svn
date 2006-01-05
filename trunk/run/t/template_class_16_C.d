// $HeadURL$
// $Date$
// $Author$

// @author@	Johan Granberg <lijat.meREM@VEgmail.com>
// @date@	2006-01-03
// @uri@	news:dpee4j$m7a$1@digitaldaemon.com

module dstress.run.t.template_class_16_C;

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

alias Alocator!(Object) GObject;
alias Factory!(Module) GModule;

int main(){
	GModule mod=new GModule();
	return 0;
}
