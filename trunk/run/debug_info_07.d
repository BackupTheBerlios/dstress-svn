// $HeadURL$
// $Date$
// $Author$

// @author@	Jarrett Billingsley <kb3ctd2@yahoo.com>
// @date@	2005-03-25
// @uri@	news:d21vhg$pld$1@digitaldaemon.com

// __DSTRESS_DFLAGS__ -g

module dstress.run.debug_info_07;

struct MyStruct{
}

alias int function(MyStruct m) fn;

int check(fn f){
	return 1;
}

int main(){
	MyStruct m;
	fn f;
	assert(check(f)==1);
	return 0;
}