// $HeadURL$
// $Date$
// $Author$

// @author@	Nick <Nick_member@pathlink.com>
// @date@	2004-08-05
// @uri@	news:cetp3r$1rrc$1@digitaldaemon.com 

template Bar(Y){
	void Bar(Y param){
	}
}

template Foo(alias X){
	alias Bar!(typeof(X)) Foo;
}

void unused(){
	float f = 2.1f;
	Bar!(typeof(f))(f);
}

int main(){
	float f = 1.2f;
	mixin Foo!(f);
	Foo(f);
	return 0;
}
