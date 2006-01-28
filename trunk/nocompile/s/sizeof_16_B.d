// $HeadURL$
// $Date$
// $Author$

// @author@	Don Clugston <dac@nospam.com.au>
// @date@	2006-01-25
// @uri@	news:dr7r09$1jf9$1@digitaldaemon.com

// __DSTRESS_ELINE__ 18

module dstress.nocompile.s.sizeof_16_B;

template tree(int n){
	const int tree = n;
}

template getsize(){
	const int getsize = sizeof(tree!(2));
}

template forest() {
	const int sz = getsize!();
	const int done = tree!( sz );
}

int crash = forest!().done;
