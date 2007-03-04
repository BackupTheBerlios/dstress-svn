// $HeadURL$
// $Date$
// $Base$

// @author@	Thomas Kuehne <thomas-dloop@kuehne.thisisspam.cn>
// @date@	2004-12-10
// @uri@	news:sr8p82-lu3.ln1@kuehne.cn
// @uri@	nntp://digitalmars.com/digitalmars.D.bugs/2528

module dstress.run.super_08;

int dummy;

class Parent{
	this(){
		dummy++;
	}
}

class Child : Parent{
	this(){
		super();
	}
}

int main(){
	Child o = new Child();
	return dummy-1;
}
