// $HeadURL$
// $Date$
// $Author$

module dstress.run.foreach_09;

int main(){
	double[dchar[]] array;
	array["eins"]= 1.0;
	array["drei"]= 3.0;
	double test=0.0;
	int count=0;
	assert(count==0);
	foreach(double obj; array){
		test+=obj;
		count++;
	}
	assert(count==2);
	assert(test==4.0);
	return 0;
}
