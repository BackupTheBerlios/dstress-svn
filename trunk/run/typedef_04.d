// $HeadURL$
// $Date$
// $Author$

// @author@ 	berupon <yu@3dcg.ne.jp>
// @date@	2004-06-10
// @uri@	news:20040611054017.9D25.YU@3dcg.ne.jp

module dstress.run.typedef_04;

typedef int Int;

class Test( T = Int){
}

alias Test!() Test2;

int main(){
	Test2 t;
	return 0;
}
