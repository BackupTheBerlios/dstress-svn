// $HeadURL$
// $Date$
// $Author$

// @author@	David L. Davis <SpottedTiger@yahoo.com>
// @date@	2005-08-10
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=4752
// @desc@	Negative numbers are treated as Positive in compares.

module dstress.run.o.opCmp_05_D;

int main(){
	static if(128<0){
		assert(0);
	}

	static if(128<=0){
		assert(0);
	}

	static if(128>0){
		assert(1);
	}else{
		assert(0);
	}

	static if(128>=0){
		assert(1);
	}else{
		assert(0);
	}

	return 0;
}
