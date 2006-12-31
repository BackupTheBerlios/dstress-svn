// $HeadURL$
// $Date$
// $Author$

// @author@	Matti Niemenmaa <deewiant@gmail.com>
// @date@	2006-12-30
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=778
// @desc@	[Issue 778] -inline: Assertion failure: '!v->csym' on line 450 in file 'glue.c'

module dstress.run.a.assert_18_F;

void foo(char[] bar){
	assert(true, bar ~ "some");
}

void main(char[][] args){
	foo("other");
}

