// $HeadURL$
// $Date$
// $Author$

// @author@	Ant <duitoolkit@yahoo.ca>
// @date@	2006-03-06
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=6533

module dstess.run.s.struct_24_D;

struct S{
}

int main(char[][] args){
	S* s = new S;

	// don't trip the "no effect" filter:
	size_t* x = cast(size_t*)s;

	return *x * (args.length - 1);
}
