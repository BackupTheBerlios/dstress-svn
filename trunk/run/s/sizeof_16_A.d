// $HeadURL$
// $Date$
// $Author$

// @author@	Don Clugston <dac@nospam.com.au>
// @date@	2006-01-25
// @uri@	news:dr7r09$1jf9$1@digitaldaemon.com

module dstress.run.s.sizeof_16_A;

template tree(int n){
	const int tree = n;
}

template getsize(){
	const int getsize = tree!(2).sizeof;
}

template forest() {
	const int sz = getsize!();
	const int done = tree!( sz );
}

const int crash = forest!().done;

int main(){
	if(crash == 4){
		return 0;
	}
}
