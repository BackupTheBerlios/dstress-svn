// $HeadURL$
// $Date$
// $Author$

// @author@	Wang Zhen <nehzgnaw@gmail.com>
// @date@	2006-02-17
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=6300

module dstress.nocompile.t.template_30_E;

template t(int z){
	const int t = 2;
}

int foo(){
	return t!(dummy());
}

int dummy(){
	return t!(bar());
}

int bar(){
	return t!(foo());
}


