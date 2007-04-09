// $HeadURL$
// $Date$
// $Author$

// @author@	Johan Granberg <lijat.meREM@VEgmail.com>
// @date@	2006-01-03
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=5970

module dstress.run.t.template_class_16_B;

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
typedef Factory!(Module) GModule;

int main(){
	GModule mod=new GModule();
	return 0;
}
