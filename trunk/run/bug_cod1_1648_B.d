// $HeadURL$
// $Date$
// $Author$

// @author@	Tom S <h3r3tic@remove.mat.uni.torun.pl>
// @date@	2005-03-27
// @uri@	news:d26le9$2hsa$1@digitaldaemon.com

// __DSTRESS_DFLAGS__ -inline

module dstress.run.bug_cod1_1648_B;

struct MyStruct{
	static MyStruct bar(){
		MyStruct s;
		return s;
	}
}

int main(){
	MyStruct[] array;  
	array.length=2;
	array[] = MyStruct.bar;
	return 0;
} 