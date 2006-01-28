// $HeadURL$
// $Date$
// $Author$

// @author@	Don Clugston <dac@nospam.com.au>
// @date@	2006-01-25
// @uri@	news:dr7r09$1jf9$1@digitaldaemon.com

// __DSTRESS_ELINE__ 18

module dstress.nocompile.s.sizeof_16_C;

template tree(int n){
	const int tree = n;
}

template getsize(){
	const int getsize = sizeof(tree!(2));
}

int crash = getsize!();
