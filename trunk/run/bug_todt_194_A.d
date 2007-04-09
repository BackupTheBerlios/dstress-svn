// $HeadURL$
// $Date$
// $Author$

// @author@	zwang <nehzgnaw@gmail.com>
// @date@	2005-02-03
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=2850

module dstress.run.bug_todt_194_A;

int main(){
	assert((new MyStruct!()).i==int.sizeof);
	return 0;
}

struct MyStruct(){
	int i=func(0).sizeof;
}

int func(...){
	return 0;
}

