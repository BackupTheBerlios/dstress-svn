// $HeadURL$
// $Date$
// $Author$

// @author@	Max Samuha <maxter@i.com.ua>
// @date@	2007-02-28
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=1010
// @desc@	[Issue 1010] Abstract class template does not compile when parametrized with char[]

module dstress.run.t.template_class_20_B;

template Foo(char[] bar){
	abstract class Foo{
	}
}

class Bar : Foo!("abc"){
}

int main(){
	Bar b = new Bar();
	return 0;
}

