// $HeadURL$
// $Date$
// $Author$

// @author@	Deewiant <deewiant.doesnotlike.spam@gmail.com>
// @date@	2005-07-14
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=4532

module dstress.run.f.forward_reference_14_B;

class Foo(TYPE){
	void func(int delegate(TYPE a) theParameter = myLilFunction){
	}

	static int delegate(TYPE a) myLilFunction;
}

int main(){
	Foo!(int) foo = new Foo!(int);
	foo.func();
	return 0;
}
