// $HeadURL$
// $Date$
// $Author$

// @author@	Sean Kelly <sean@f4.ca>
// @date@	2004-11-11
// @uri@	news:cn0g3t$o2i$1@digitaldaemon.com
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=2249

// see also dstress.addon.constructor_06_A

// __DSTRESS_DFLAGS__ addon/constructor_06_A.d 

module dstress.run.constructor_06;
import addon.constructor_06_A;

int main(){
	Derived c = new Derived();
	return 0;
}
