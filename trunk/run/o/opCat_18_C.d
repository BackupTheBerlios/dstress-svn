// $HeadURL$
// $Date$
// $Author$

// @author@	Don Clugston <dac@nospam.com.au>
// @date@	2005-12-30
// @uri@	news:dp2u3b$1osl$1@digitaldaemon.com

module dstress.run.o.opCat_18_C;

class Dog(char[] duck){
	const int dog = 2;
}

const int aardvark = Dog!("cat" ~ "cat").dog;

int main(){
	if(aardvark == 2){
		return 0;
	}
}