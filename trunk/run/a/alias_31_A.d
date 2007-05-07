// $HeadURL$
// $Date$
// $Author$

// @author@	Sean Kelly <sean@f4.ca>
// @date@	2006-02-09
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=6193

module dstress.run.a.alias_31_A;

class ClassOf(Type){
	Type val;

	template ref_tmpl(){
		alias val ref_tmpl;
	}
}

int main(){
	auto c = new ClassOf!(int)();
	int x = 3;

	c.ref_tmpl!() = x;

	if(c.ref_tmpl!() == 3){
		return 0;
	}
}

