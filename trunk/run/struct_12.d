// $HeadURL$
// $Date$
// $Author$

// @author@	Bent Rasmussen <exo@bent-rasmussen.info>
// @date@	2004-06-21
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=567

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

