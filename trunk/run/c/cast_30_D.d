// $HeadURL$
// $Date$
// $Author$

// @author@	Thomas Kuehne <thomas-dloop@kuehne.THISISSPAM.cn>
// @date@	2005-12-03
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=5729

module dstress.run.c.cast_30_D;

alias idouble X;

int main(){
	X four = cast(X) 4.0i;

	if(four.im != 4.0){
		assert(0);
	}

	return 0;
}
