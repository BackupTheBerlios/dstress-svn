// $HeadURL$
// $Date$
// $Base$

// @author@	Thomas Kuehne <thomas-dloop@kuehne.thisisspam.cn>
// @date@	2004-12-10
// @uri@	news:sr8p82-lu3.ln1@kuehne.cn
// @url@	nntp://digitalmars.com/digitalmars.D.bugs/2528

// call to "this" before "super"

// __DSTRESS_ELINE__  26

module dstress.nocompile.super_09;

size_t status;

class Parent{
	this(int dummy){
	}
}

class Child : Parent{
	this(){
		status = cast(int) &this;
		super(0);
	}
}

int main(){
	Child o = new Child();
	return status & 0;
}
