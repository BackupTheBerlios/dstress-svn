// $HeadURL$
// $Date$
// $Author$

// @author@	Stewart Gordon <smjg_1998@yahoo.com>
// @date@	2004-09-01
// @uri@	news:ch44sj$211s$2@digitaldaemon.com
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=1726

module dstress.run.interface_05;

int status;

class Parent{
}

interface MyInterface{
	MyInterface test();
}

class Child : Parent, MyInterface{
	Child test(){
		status++;
		return null;
	}
}

int main(){
	Child bro = new Child();
	assert(status==0);
	Child sis = bro.test();
	assert(status==1);
	return 0;
}
