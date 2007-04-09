// $HeadURL$
// $Date$
// $Author$

// @author@	Nick <Nick_member@pathlink.com>
// @date@	2005-05-25
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=4162

module dstress.run.c.creal_26_A;

int main(){
	static creal[] params = [1.0L + 0.0Li, 3.0L + 0.0Li, 5.0L + 0.0Li];

	creal[] sums = new creal[3];
	sums[] = 0.0L + 0.0Li;

	foreach(creal d; params){
		creal prod = d;

		for(int i; i<2; i++){
			sums[i] += prod;
			prod *= d;
		}
		sums[2] += prod;
	}

	if(sums[0].re != 9.0L){
		assert(0);
	}
	if(sums[0].im != 0.0L){
		assert(0);
	}
	if(sums[1].re != 35.0L){
		assert(0);
	}
	if(sums[1].im != 0.0L){
		assert(0);
	}
	if(sums[2].re != 153.0L){
		assert(0);
	}
	if(sums[2].im != 0.0L){
		assert(0);
	}

	return 0;
}
