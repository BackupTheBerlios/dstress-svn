
// @author@	Nick <Nick_member@pathlink.com>
// @date@	2004-08-05
// @uri@	news://cetp3r$1rrc$1@digitaldaemon.com 

template Bar(Y){
	void Bar(Y param){
	}
}

template Foo(alias X){
	alias Bar!(typeof(X)) Foo;
}

int main(){
	float f = 1.2f;
	mixin Foo!(f);
	Foo(f);
	return 0;
}
