// $HeadURL$
// $Date$
// $Author$

// @author@	Stewart Gordon <smjg_1998@yahoo.com>
// @date@	2005-10-13
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=5140

module dstress.run.o.overload_26_A;

enum E{
	A
}

int foo(E e){
	assert(0);
}

int foo(uint i){
	return i + 1;
}

int main(){
	if(foo(cast(int)2) != 3){
		assert(0);
	}

	return 0;
}
