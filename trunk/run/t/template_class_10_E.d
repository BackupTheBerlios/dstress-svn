// $HeadURL$
// $Date$
// $Author$

// @author@	Burton Radons <burton-radons@smocky.com>
// @date@	2005-09-26
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=5071

module dstress.run.t.template_class_10_E;

class A (uint D){
	B!(D - 1) b;
	
	this(){
		b = new B!(D-1);
	}
}

class B (uint D){
	uint [D] data;
	uint foo () {
		return data [0];
	}
}

int main(){
	B!(2) b2 = new B!(2);
	assert(b2.data.length==2);

	A!(4) a4 = new A!(4);
	assert(a4.b.data.length==3);

	return 0;
}