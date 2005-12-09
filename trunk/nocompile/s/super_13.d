// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_ELINE__ 22

module dstress.nocompile.s.super_13;

class A{
	int i;
	
	this(){
		i = 2;
	}
}

class B : A{
	this(){
		if(i){
			return;
		}
		super();
	}
}

