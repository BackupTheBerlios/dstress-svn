// $HeadURL$
// $Date$
// $Author$

// @author@	Mike Parker <aldacron71@yahoo.com>
// @date@	2005-02-15
// @uri@	news:cus126$2mq4$1@digitaldaemon.com
// @url@	nntp://news.digitalmars.com/digitalmars.D.bugs/2991

module dstress.run.enum_13;

class Foo{
	enum MyEnum{
		VALUE_A=1,
	}
}

class Bar{
	enum MyEnum{
		VALUE_B=2,
	}
}

int main(){
	assert(Foo.MyEnum.VALUE_A==1);
	assert(Bar.MyEnum.VALUE_B==2);
	return 0;
} 