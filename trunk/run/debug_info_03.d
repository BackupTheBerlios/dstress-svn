// $HeadURL$
// $Date$
// $Author$

// @author@	Jarrett Billingsley <kb3ctd2@yahoo.com>
// @date@	2005-03-25
// @uri@	news:d21vhg$pld$1@digitaldaemon.com

module dstress.run.debug_info_03;

class MyClass{
	int check(fn f){
		return 1;
	}
}

alias int function(MyClass m) fn;

int main(){
	MyClass m = new MyClass();
	fn f;
	assert(m.check(f)==1);
	return 0;
}