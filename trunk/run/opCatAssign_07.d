// $HeadURL$
// $Date$
// $Author$

// @author@	Regan Heath <regan@netwin.co.nz>
// @date@	2005-03-17
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=3213

module dstress.run.opCatAssign_07;

int status;

class MyClass{
	template opCatAssign(Type){
	        MyClass opCatAssign(int[] arr){
			status+=arr.length;
	                return this;
        	}
	}
	mixin opCatAssign!(int[]);
}

int main(){
        static int[] arr = [0,1,2];
        MyClass a = new MyClass();

	assert(status==0);
        a ~= arr;
	assert(status==3);
	return 0;
}
