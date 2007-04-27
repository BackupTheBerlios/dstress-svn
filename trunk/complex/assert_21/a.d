// $HeadURL$
// $Date$
// $Author$

// @author@	Jarrett Billingsley <jarrett.billingsley@gmail.com>
// @date@	2007-04-10
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=1121
// @desc@	[Issue 1121] Assertion codegen issue with templated function

import b;

int main(){
	try{
		foo();
		func!(void)();
	}catch(Exception e){
		if("AssertError Failure b.d(13) GO" == e.toString()){
			return 0;
		}
	}

	assert(0);
}

