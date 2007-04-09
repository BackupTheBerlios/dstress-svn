// $HeadURL$
// $Date$
// $Author$

// @author@	Thomas Kuehne <thomas-dloop@kuehne.thisisspam.cn>
// @date@	2004-12-10
// @uri@	news:sr8p82-lu3.ln1@kuehne.cn
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=2528

// call to "this" before "super"-constructor

// __DSTRESS_ELINE__ 25

module dstress.nocompile.super_09;

class Parent{
	this(int dummy){
		x=2;
	}
	int x;
}

class Child : Parent{
	this(){
		assert(x==2);
		super(0);
	}
}

int main(){
	Child o = new Child();
	return 0;
}
