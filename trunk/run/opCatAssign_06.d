// $HeadURL$
// $Date$
// $Author$

// @author@	Regan Heath <regan@netwin.co.nz>
// @date@	2005-03-17
// @uri@	news:opsnrsp6fs23k2f5@nrage.netwin.co.nz

module dstress.run.opCatAssign_06;

int status;

class MyClass{
        MyClass opCatAssign(int[] arr){
		status+=arr.length;
                return this;
        }
}

int main(){
        static int[] arr = [0,1,2];
        MyClass a = new MyClass();

	assert(status==0);
        a ~= arr;
	assert(status==3);
	return 0;
}
