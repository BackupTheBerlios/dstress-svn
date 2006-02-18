// $HeadURL$
// $Date$
// $Author$

// @author@	Chris Miller <chris@dprogramming.com>
// @date@	2006-02-16
// @uri@	news:op.s42s5zvapo9bzi@moe

module dstress.run.c.continue_04_D;

int main(){
	int sum;
	
label:
	foreach(char c; "\x00\x01\x02"){
		sum += c;
		continue label;
	}

	if(sum == 3){
		return 0;
	}
}

