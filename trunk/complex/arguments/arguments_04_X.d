// $HeadURL$
// $Date$
// $Author$

// @author@	Kevin Bealer <Kevin_member@pathlink.com>
// @date@	2006-03-13
// @uri@	news:dv37ip$1v97$1@digitaldaemon.com

module /*dstress.*/complex.arguments.arguments_04_X;

template foo(int x){
	int foo(){
		dummy(x);
		return (x * 2) + 1;
	}
}

void dummy(...){
}
