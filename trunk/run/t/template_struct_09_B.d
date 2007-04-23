// $HeadURL$
// $Date$
// $Author$

// @author@	Don Clugston <clugdbug@yahoo.com.au>
// @date@	2007-04-03
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=1140
// @desc@	[Issue 1140] ICE casting tuple member to tuple struct

module dstress.run.t.template_struct_09_B;

struct Cat{
	int i;
}

struct Dog(B...){
	B values;

	static Cat create(B x) {
		return *cast(Cat*)(&x[1]);
	}
}

int main(){
	auto c = Dog!(int, int).create(7, 5);
	return 0;
}
