// $HeadURL$
// $Date$
// $Author$

// @author@	Stewart Gordon <smjg_1998@yahoo.com>
// @date@	2005-12-12
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=5835

// At least one return statement is required if the function specifies a return type that is not void.

// __DSTRESS_ELINE__ 15

module dstress.nocompile.r.return_08_C;

int test() { }

void foo() {
	while(test() != 1){
		foo();
	}
}
