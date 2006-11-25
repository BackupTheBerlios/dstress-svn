// $HeadURL$
// $Date$
// $Author$

// @author@	Nazo Humei <lovesyao@hotmail.com>
// @date@	2006-11-25
// @uri@	news:bug-596-3@http.d.puremagic.com/issues/
// @desc@	[Issue 596] New: Support array, arrayliteral and struct in switch and case

module dstress.run.s.switch_23_A;

int main(){
	switch(['a']){
		case "c":
			break;
		case "a":
			return 0;
		case "b":
			break;
	}

	assert(0);
}
