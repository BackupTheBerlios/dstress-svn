// $HeadURL$
// $Date$
// $Author$

// @author@	Bent Rasmussen <exo@bent-rasmussen.info>
// @date@	2004-06-21
// @uri@	news:cb550t$1pon$1@digitaldaemon.com

module dstress.run.struct_12;

int status;

struct MyStruct{
}

void rec(int i, MyStruct s){
	if( i > 0 ){
		status++;
		rec(i-1, s);
	}
}

int main(){
	assert(status==0);
	MyStruct st;
	rec(1030, st);
	assert(status==1030);
	return 0;
}















