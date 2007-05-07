// $HeadURL$
// $Date$
// $Author$

// @author@	Sean Kelly <sean@f4.ca>
// @date@	2005-12-02
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=5726

module dstress.run.v.volatile_02_C;

template atomicLoad( T ){
	T atomicLoad( ref T val ){
		volatile{
			return val;
		}
	}
}

int main(){
	uint  i;
	atomicLoad!(uint)(i);
	return 0;
}



