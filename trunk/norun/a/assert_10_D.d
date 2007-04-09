// $HeadURL$
// $Date$
// $Author$

// @author@	Derek Parnell <derek@psych.ward>
// @date@	2005-05-31
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=4178
// @desc@	invalid code generation

// __DSTRESS_ELINE__ 34
// __DSTRESS_TORTURE_BLOCK__ -release

module dstress.norun.a.assert_10_D;

const int dummy = 1000;
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
	if(sp!=0){
	}
	assert(sp == -1);

	return 0;
}
