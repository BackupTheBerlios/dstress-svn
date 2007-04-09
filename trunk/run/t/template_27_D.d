// $HeadURL$
// $Date$
// $Author$

// @author@	Don Clugston <dac@nospam.com.au>
// @date@	2006-02-08
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=6186

module dstress.run.t.template_27_D;

template frog(char F){
	const int frog = 1;
}

template frog(int F){
	const int frog = 2;
}

template frog(char F: 'A'){
	const int frog = 3;
}

template frog(int F: 65){
	const int frog = 4;
}

int main(){
	static assert(frog!(65) == 4);
	return 0;
}


