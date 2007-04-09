// $HeadURL$
// $Date$
// $Author$

// @author@	zwang <nehzgnaw@gmail.com>
// @date@	2005-02-03
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=2838

module dstress.run.nested_function_06;

int status;

void check(){
	assert(status==1);
	void main(int dummy){
		assert(status==3);
		status+=5;
	}
	status+=2;
	assert(status==3);
	main(2);
	assert(status==8);
	status+=7;
}

int main(){
	status++;
	assert(status==1);
	check();
	assert(status==15);
	return 0;
}
