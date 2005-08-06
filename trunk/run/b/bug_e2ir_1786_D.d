// $HeadURL$
// $Date$
// $Author$

// @author@	Deewiant <deewiant.doesnotlike.spam@gmail.com>
// @date@	2005-08-04
// @uri@	news:dct2rf$5bf$1@digitaldaemon.com

module dtsress.run.b.bug_e2ir_1786_D;

class SomeObject{
}

int main(){
	SomeObject[] arr = new SomeObject[1];
	
	arr[0]=new SomeObject();

	if(arr[0] < arr[0]){
		assert(0);
	}else{
		return 0;
	}
}