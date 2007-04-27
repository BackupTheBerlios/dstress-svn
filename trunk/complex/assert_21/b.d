// $HeadURL$
// $Date$
// $Author$

// @author@	Jarrett Billingsley <jarrett.billingsley@gmail.com>
// @date@	2007-04-10
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=1121
// @desc@	[Issue 1121] Assertion codegen issue with templated function

module b;

void foo(){
	assert(false, "GO");
}

public void func(T)(){
	assert(false, "Blah");
}
