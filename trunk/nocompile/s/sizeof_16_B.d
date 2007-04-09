// $HeadURL$
// $Date$
// $Author$

// @author@	Don Clugston <dac@nospam.com.au>
// @date@	2006-01-25
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=6082

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
