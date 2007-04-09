// $HeadURL$
// $Date$
// $Author$

// @author@	Sean Kelly <sean@f4.ca>
// @date@	2005-12-02
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=5726

module dstress.run.v.volatile_02_D;

template atomicLoad( T ){
	T atomicLoad( inout T val ){
		return val;
	}
}

int main(){
	int i;
	uint u;
	atomicLoad!(int)(i);
	atomicLoad!(uint)(u);
	return 0;
}



