// $HeadURL$
// $Date$
// $Author$

module dstress.run.out_03;

struct MyStruct{
	int x=2;
}

void check(out MyStruct s){
	assert(s.x==2);
	s.x++;
}

int main(){
	MyStruct s;
	s.x=1;
	assert(s.x==1);
	check(s);
	assert(s.x==3);
	return 0;
}
