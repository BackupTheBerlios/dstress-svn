// $HeadURL$
// $Date$
// $Author$

// @author@	Kris <du@bar.com>
// @date@	2005-10-28
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=5233

module dstress.run.s.static_34_B;

int main(){
	static class C{
		static C create(){
			return new C;
		}
	}

	C c1 = new C;
	assert(c1);
	
	C c2 = c1.create();
	assert(c2);

	C c3 = C.create();
	assert(c3);

	return 0;
}

