// $HeadURL$
// $Date$
// $Author$

// @author@	Deewiant <deewiant.doesnotlike.spam@gmail.com>
// @date@	2005-08-04
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=4683

module dtsress.run.b.bug_e2ir_1786_B;

interface SomeInterface{
}

int main(){
	SomeInterface[] arr = new SomeInterface[1];

	if(arr[0] != arr[0]){
		assert(0);
	}else{
		return 0;
	}
}