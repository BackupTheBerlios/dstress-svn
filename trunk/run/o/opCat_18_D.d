// $HeadURL$
// $Date$
// $Author$

// @author@	Don Clugston <dac@nospam.com.au>
// @date@	2005-12-30
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=5924

module dstress.run.o.opCat_18_D;

class Dog(char[] duck){
	const int dog = 2;
}

const int aardvark = Dog!("cat" ~ '2').dog;

int main(){
	if(aardvark == 2){
		return 0;
	}
}
