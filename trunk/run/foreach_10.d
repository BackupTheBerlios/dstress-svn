
class MyArray{
	double[] array;
	
	this(){
		array=new double[3];
		array[0]=0.0;
		array[1]=4.0;
		array[2]=8.0;
	}
	
	int opApply(int delegate(inout double) dg){
		double result;
		for(int i=0; i<array.length; i++){
			result = dg(array[i]);
			if(result){
				return i;
			}
		}
		return array.length;
	}
}
int main(){
	MyArray array=new MyArray();
	double test=0.0;
	assert(test==0.0);
	foreach(double value; array){
		test+=value;
	}
	assert(test==12.0);
	return 0;
}
