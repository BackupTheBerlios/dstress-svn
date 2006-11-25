// $HeadURL$
// $Date$
// $Author$

// @author@	Nazo Humei <lovesyao@hotmail.com>
// @date@	2006-11-25
// @uri@	news:bug-596-3@http.d.puremagic.com/issues/
// @desc@	[Issue 596] New: Support array, arrayliteral and struct in switch and case

module dstress.run.s.switch_23_C;

int main(){
	switch([cast(wchar)'a']){
		case "c"w:
			break;
		case "a"w:
			return 0;
		case "b"w:
			break;
	}

	assert(0);
}
