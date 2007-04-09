// $HeadURL$
// $Date$
// $Author$

// @author@	Burton Radons <burton-radons@smocky.com>
// @date@	2005-09-07
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=4937

module dstress.run.opIndexAssign_02_C;

int check;

struct Array{
	int opIndex(int a){
		check = a;
		return a;
	}

	int opIndexAssign(int a, int b){
		check = a * b;
		return a;
	}
}

struct Property{
	Array property(){
		Array a;
		return a;
	}
}

int main(){
	Property p;

	p.property[4] = 8;
	assert(check == 4*8);

	return 0;
}
