// $HeadURL$
// $Date$
// $Author$

// Porting: C++

// __DSTRESS_ELINE__ 14

module dstess.nocmpile.c.catch_07;

void main(){
	try{
		throw new Exception("msg");
	}catch(...){
	}
}

