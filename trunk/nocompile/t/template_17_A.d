// $HeadURL$
// $Date$
// $Author$

// @author@	Don Clugston <dac@nospam.com.au>
// @date@	2005-10-27
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=5229

module dstress.nocompile.t.template_17_A;

template t(int i){
	const int x = t!(i+1).x;
}

void main(){
	int i = t!(0).x;
}
