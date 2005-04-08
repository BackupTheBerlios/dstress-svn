// $HeadURL$
// $Date$
// $Author$

// @author@	dickl <dick221z@yahoo.com>
// @date@	2005-04-08
// @uri@	news:d36gav$31fo$1@digitaldaemon.com

module dstress.run.switch_20;

class T{
	~this(){}
}

int main(char[][] args){
	T t=new T();

	switch(args.length){
		case 1:
			break;

		default:
			assert(0);
			break;
	}
	return 0;
}

