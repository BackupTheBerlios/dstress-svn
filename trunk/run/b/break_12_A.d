// $HeadURL$
// $Date$
// $Author$

// @author@	Juan Jose Comellas <juanjo@comellas.com.ar>
// @date@	2006-11-30
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=621
// @desc@	When inside a loop, if you call break inside a try block the finally block is never executed

module dstress.run.b.break_12_A;

int main(){
	int status = 1;

	while(true){
		try{
			status += 1;
			break;
		}finally{
			status *= 7;
		}
	}
	if(status != 14){
		assert(0);
	}

	return 0;
}
