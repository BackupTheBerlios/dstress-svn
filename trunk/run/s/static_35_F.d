// $HeadURL$
// $Date$
// $Author$

// @author@	Kris <fu@bar.com>
// @date@	2005-12-05
// @uri@	news:dn27o6$24c4$1@digitaldaemon.com

module dstress.run.s.static_35_F;

struct Outer{
	static template Inner(T){
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
