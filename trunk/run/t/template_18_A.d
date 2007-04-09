// $HeadURL$
// $Date$
// $Author$

// @author@	Don Clugston <dac@nospam.com.au>
// @date@	2005-11-14
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=5463

module dstress.run.t.template_18_A;

template outside(alias s){
	const int outval = s.localval;
}

template test(alias f){
	template local(){
		const int localval = f.x;
	}
	
	const int val = outside!(local!()).outval;
}

template a(){
	const int x = 123;
}

template b(){
	const int x = 456;
}

int main(){
	static assert( test!( a!() ).val == 123);
	static assert( test!( b!() ).val == 456);

	return 0;
}

