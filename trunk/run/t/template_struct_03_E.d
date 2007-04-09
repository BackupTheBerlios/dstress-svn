// $HeadURL$
// $Date$
// $Author$

// @author@	Burton Radons <burton-radons@smocky.com>
// @date@	2005-09-26
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=5071

module dstress.run.t.template_struct_03_E;

struct A (uint D){
	B!(D - 1) b;
}

struct B (uint D){
	uint [D] data;
	uint foo () {
		return data [0];
	}
}

int main(){
	A!(4) a4;
	assert(a4.b.data.length==3);

	return 0;
}