// $HeadURL$
// $Date$
// $Author$

// @author@	Stewart Gordon <smjg_1998@yahoo.com>
// @date@	2005-12-12
// @uri@	news:dnjnqe$16sv$1@digitaldaemon.com

// __DSTRESS_ELINE__ 18

module dstress.nocompile.i.is_14_F;

struct x(){
	int x;
}

void main(){	
	static if(is(x()){
	}
}
