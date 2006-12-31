// $HeadURL$
// $Date$
// $Author$

// @author@	<thomas-dloop@kuehne.cn>
// @date@	2006-07-02
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=235

module dstress.run.s.scope_14_B;

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
	foo(args.length < 1000);

	if(status != 0){
		assert(0);
	}

	return 0;
}
	
