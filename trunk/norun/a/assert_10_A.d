// $HeadURL$
// $Date$
// $Author$

// @author@	Derek Parnell <derek@psych.ward>
// @date@	2005-05-31
// @uri@	news:151tzf2ee9law$.15kklgaxy0bfr$.dlg@40tude.net
// @desc@	invalid code generation

// __DSTRESS_ELINE__ 30

module dstress.norun.a.assert_10_A;

dchar[] SomeFunc( dchar[] pText, out int pStopPosn){
	if(pText.length == 0){
		pStopPosn = 0;
	}else{
		pStopPosn = -1;
	}
	return pText.dup;
}

int main(){
	int sp;

	SomeFunc("123", sp);
	assert(sp == -1);

	SomeFunc("", sp);
	assert(sp == -1);

	return 0;
}
