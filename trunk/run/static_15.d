// $HeadURL$
// $Date$
// $Author$

// @author@	tetsuya <tetsuya_member@pathlink.com>
// @date@	2004-10-30
// @uri@	news:cm057b$13nu$1@digitaldaemon.com
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=2165

module dstress.run.static_15;

class MyClass{
	static {
		int x;
		static this() {
			x=2;
		}
	}
}

int main(){
	assert(MyClass.x==2);
	return 0;
}
