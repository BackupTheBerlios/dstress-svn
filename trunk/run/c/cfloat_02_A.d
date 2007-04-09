// $HeadURL$
// $Date$
// $Author$

// @author@	Nick <Nick_member@pathlink.com>
// @date@	2005-05-25
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=4162

module dstress.run.c.cfloat_02_A;

int main(){
	static cfloat[] params = [1.0f + 0.0fi, 3.0f + 0.0fi ,5.0f + 0.0fi];

	cfloat[] sums = new cfloat[3];
	sums[] = 0.0f + 0.0fi;

	foreach(cfloat d; params){
		cfloat prod = d;

		for(int i; i<2; i++){
			sums[i] += prod;
			prod *= d;
		}
		sums[2] += prod;
	}

	if(sums[0].re != 9.0f){
		assert(0);
	}
	if(sums[0].im != 0.0f){
		assert(0);
	}
	if(sums[1].re != 35.0f){
		assert(0);
	}
	if(sums[1].im != 0.0f){
		assert(0);
	}
	if(sums[2].re != 153.0f){
		assert(0);
	}
	if(sums[2].im != 0.0f){
		assert(0);
	}

	return 0;
}
