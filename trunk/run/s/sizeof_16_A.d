// $HeadURL$
// $Date$
// $Author$

// @author@	Don Clugston <dac@nospam.com.au>
// @date@	2006-01-25
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=6082

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
