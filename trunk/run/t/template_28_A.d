// $HeadURL$
// $Date$
// $Author$

// @author@	Sean Kelly <sean@f4.ca>
// @date@	2006-02-09
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=6196

module dstress.run.t.template_28_A;

struct Empty{
}

class Tuple(HeadType, TailType){
}

template MakeTuple(T1, T2){
	alias Tuple!(T1, Tuple!(T2)) MakeTuple;
}

template MakeTuple(T1=Empty, T2=Empty, T3=Empty){
	static if(is(T1 == Empty))
		alias Empty MakeTuple;
	else
		alias Tuple!(T1,MakeTuple!(T2,T3)) MakeTuple;
}

int main(){
	auto t = new MakeTuple!(int,int)();
	return 0;
}

