// $HeadURL$
// $Date$
// $Author$

// @author@	Don Clugston <dac@nospam.com.au>
// @date@	2006-01-25
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=6080

module dstress.run.t.template_26_B;

template factorial(uint n){
	static if (n<2){
		const int factorial = 1;
	}else{
		const int factorial = n * .factorial!(n-1);
	}
}

template rhino(alias hippo){
	const int rhino = hippo!(3);
}

const int lion = rhino!(factorial);

int main(){
	static if(lion == 1 * 2 *3){
		return 0;
	}
}

