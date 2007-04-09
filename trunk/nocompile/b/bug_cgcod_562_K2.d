// $HeadURL$
// $Date$
// $Author$

// @author@	Tiago Gasiba <tiago.gasiba@gmail.com>
// @date@	2005-11-28
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=5690

// __DSTRESS_ELINE__ 15

module dstress.nocompile.b.bug_cgcod_562_K2;

template test( T : T[] ){
	void test( T[] data ) {
		data[0] /= cast(cdouble)data.length;
	}
}

alias test!(real[]) bug;

void main(){
	real[1] array;
	bug(array);
}

