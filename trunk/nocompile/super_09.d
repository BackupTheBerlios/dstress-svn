// $HeadURL$
// $Date$
// $Base$

// @author@	Thomas Kuehne <thomas-dloop@kuehne.thisisspam.cn>
// @date@	200-12-10
// @uri@	news:sr8p82-lu3.ln1@kuehne.cn
// @url@	nntp://digitalmars.com/digitalmars.D.bugs/2528

// call to "this" before "super"

module dstress.nocompile.super_09;

size_t status;

class Parent{
	this(int dummy){
	}
}

class Child{
	this(){
		status = cast(int) this;
		super(0);
	}
}

int main(){
	Child o = new Child();
	return status & 0;
}
