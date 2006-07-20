// $HeadURL$
// $Date$
// $Author$

// @author@	Chris Miller <chris@dprogramming.com>
// @date@	2006-02-16
// @uri@	news:op.s42s5zvapo9bzi@moe

module dstress.run.c.continue_04_B;

struct MyStruct{
	int opApply(int delegate(inout int i) dg){
		for(int index=0; index < 3; index++){
			dg(index);
		}
		return 0;
	}
}

int main(){
	MyStruct foo;
	int sum;

label:
	foreach(int i; foo){
		sum += i;
		continue label;
	}

	if(sum == 3){
		return 0;
	}
}

