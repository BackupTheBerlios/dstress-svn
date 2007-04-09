// $HeadURL$
// $Date$
// $Auhtor$

// @author@	Burton Radons <burton-radons@smocky.com>
// @date@	2005-05-08
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=3924

module dstress.run.t.typeid_86_C;

int main(){
	union A{
	}

	union B{
	}

	if(typeid(A) != typeid(B)){
		return 0;
	}
	assert(0);
}
