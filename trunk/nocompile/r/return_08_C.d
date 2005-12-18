// $HeadURL$
// $Date$
// $Author$

// @author@	Stewart Gordon <smjg_1998@yahoo.com>
// @date@	2005-12-12
// @uri@	news:dnjnqe$16sv$1@digitaldaemon.com

// At least one return statement is required if the function specifies a return type that is not void.

// __DSTRESS_ELINE__ 15

module dstress.nocompile.r.return_08_C;

int test() { }

void foo() {
	while(test() != 1){
		foo();
	}
}
