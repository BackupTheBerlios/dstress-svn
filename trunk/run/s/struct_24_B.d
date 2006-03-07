// $HeadURL$
// $Date$
// $Author$

// @author@	Ant <duitoolkit@yahoo.ca>
// @date@	2006-03-06
// @uri@	news:duiilb$2heo$1@digitaldaemon.com

module dstess.run.s.struct_24_B;

struct S;

int main(char[][] args){
	S s;

	// don't trip the "no effect" filter:
	size_t* x = cast(size_t*)cast(void*)(&s);

	return *x * (args.length - 1);
}
