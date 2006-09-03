// $HeadURL$
// $Date$
// $Author$

// @author@	<someidiot@earthlink.net>
// @date@	2006-08-23
// @uri@	news:bug-306-3@http.d.puremagic.com/issues/
// @desc@	[Issue 306] New: dmd 165 breaks existing code

module dstress.run.d.delegate_19_B;

int status;

class X{
	void append (char[] content){
		status++;
	}

	void append (char[] delegate() dg){
		status--;
	}
}

int main(){
	char[] s = "abc";
	
	char[] dummy(){
		return "123";
	}

	X x = new X();

	x.append(s);
	if(status != 1){
		assert(0);
	}

	x.append(dummy);
	if(status != 2){
		assert(0);
	}

	x.append(&dummy);
	if(status != 1){
		assert(0);
	}
	
	x.append(dummy());
	if(status != 2){
		assert(0);
	}

	return 0;
}
