// $HeadURL$
// $Date$
// $Author$

// @author@	Stewart Gordon <smjg_1998@yahoo.com>
// @date@	2005-10-13
// @uri@	news:diltdi$1jr9$3@digitaldaemon.com

module dstress.run.o.overload_26_B;

enum E{
	A
}

int foo(E e){
	assert(0);
}

int foo(uint i){
	return i + 1;
}

int main(){
	int i = 2;
	
	if(foo(i) != 3){
		assert(0);
	}

	return 0;
}
