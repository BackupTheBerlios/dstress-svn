// $HeadURL$
// $Date$
// $Author$

// @author@	Jarrett Billingsley <jarrett.billingsley@gmail.com>
// @date@	2007-03-30
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=1087
// @desc@	[Issue 1087] Scope classes not destroyed in labeled statements in switches

module dstress.run.s.scope_17_B;

int i[];

scope class A{
	~this(){
		i ~= 3;
	}
}

int main(){
	i ~= 0;

	switch(i.length)
	{
		case 1:
			scope a = new A();
			scope(exit) i ~= 2;
			i ~= 1;
			break;
	}
	i ~= 4;
	
	if([0, 1, 2, 3, 4] != i){
		assert(0);
	}

	return 0;
}
