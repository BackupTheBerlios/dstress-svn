// $HeadURL$
// $Date$
// $Author$

// @author@	tetsuya <tetsuya_member@pathlink.com>
// @date@	2004-10-30
// @uri@	news:cm057b$13nu$1@digitaldaemon.com
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=2165

module dstress.run.static_16;

class MyClass{
	static {
		int x;
		this() {
			x=2;
		}
	}
}

int main(){
	assert(MyClass.x==0);
	return 0;
}
