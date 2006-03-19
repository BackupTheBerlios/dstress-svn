// $HeadURL$
// $Date$
// $Author$

// @author@	=?iso-8859-1?q?Knud_S=F8rensen?= <knud@NetRunner.all-technology.com>
// @date@	2004-05-30
// @uri@	news:pan.2004.05.30.19.54.44.280109@NetRunner.all-technology.com
// @url@	nntp://digitalmars.com/digitalmars.D.bugs/329

// __DSTRESS_ELINE__ 34

module dstress.nocompile.template_05;

template pow(x, int n){ 
	static assert(n>=0);
	enum {
		pow = pow!(x,n % 2) * pow!(x*x,n/2)
	} 
} 

template pow(x,int n:1) {
	enum{
		pow= x
	}
}
 
template pow(x,int n:0) {
	enum {
		pow= 1
	}
} 

int main(){
	pow!(3,4);
	return 0;
}
