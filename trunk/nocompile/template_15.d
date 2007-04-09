// $HeadURL$
// $Date$
// $Author$

// @author@	Sean Kelly <sean@f4.ca>
// @date@	2005-04-15
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=3668

// __DSTRESS_ELINE__ 20

module dstress.nocompile.template_15;

class C{
	template fn(T) {
		void fn(){
		}
	}    

	void test(){
		fn();
	}
}
