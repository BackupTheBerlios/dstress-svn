// $HeadURL$
// $Date$
// $Author$

// @author@	Tiago Gasiba <tiago.gasiba@gmail.com>
// @date@	2005-11-28
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=5690

// __DSTRESS_ELINE__ 15

module dstress.nocompile.b.bug_cgcod_562_J1;

template test( T : T[] ){
	void test( T[] data ) {
		data[0] /= cast(cfloat)data.length;
	}
}

alias test!(double[]) bug;

void main(){
	double[1] array;
	bug(array);
}

