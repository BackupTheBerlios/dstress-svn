// $HeadURL$
// $Date$
// $Author$

// @author@	Bastiaan Veelo <Bastiaan.N.Veelo@ntnu.no>
// @date@	2005-09-04
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=4931

module dstress.run.a.associative_array_18_C;

interface Interface{
	int test(int);
}

class Class : Interface{
	int test(int i){
		return i+1;
	}
}

int main(){
	Interface[Class] aa;

	Class o = new Class();

	aa[o] = o;

	return 0;
}
