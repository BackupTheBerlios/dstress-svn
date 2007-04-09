// $HeadURL$
// $Date$
// $Author$

// @author@	Kris <fu@bar.com>
// @date@	2005-12-05
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=5753

module dstress.run.s.static_35_C;

class Outer{
	static class Inner(T){
		static int test(){
			return 2 + T.sizeof;
		}
	}
}

int main(){
	if(Outer.Inner!(char).test() == 3){
		return 0;
	}
}
