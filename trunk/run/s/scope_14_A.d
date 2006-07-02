// $HeadURL$
// $Date$
// $Author$

// @author@	<thomas-dloop@kuehne.cn>
// @date@	2006-07-02
// @uri@	news:bug-235-3@http.d.puremagic.com/issues/

module dstress.run.s.scope_14_A;

int status;

void foo(bool b){
	if(b){
		goto label;
	}

	status = 2;
	scope(exit){
		status--;
	}

label:
	{
	}
}

int main(char[][] args){
	foo(args.length > 1000);

	if(status != 1){
		assert(0);
	}

	return 0;
}
	
