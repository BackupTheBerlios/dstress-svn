// $HeadURL$
// $Date$
// $Author$

// @author@	om S <h3r3tic@remove.mat.uni.torun.pl>
// @date@	2006-05-02
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=7130

module dstress.nocompile.m.mixin_22_A;

interface I{
	void foo();
}

template T1(){
	void foo(){
	}
}

template T2(){
	void foo(){
	}
}

class C : I{
	mixin T1;
	mixin T2;
}

void main(){
	C c = new C();
}
