// $HeadURL$
// $Date$
// $Author$

// @author@	Ilya Zaitseff <sark7@mail333.com>
// @date@	2004-11-10
// @uri@	news:opsg7zgbjdaaezs2@ilya.tec.amursk.ru
// @url@	nntp://digitalmars.com/digitalmars.D.bugs/2238

module dstress.nocompile.constructor_05;

class Class{
	template Template(){
		this() {
		}
	}
}

int main(){
	Class c = new Class.Template!();
	return 0;
}
