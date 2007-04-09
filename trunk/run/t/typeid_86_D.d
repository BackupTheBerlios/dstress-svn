// $HeadURL$
// $Date$
// $Author$

// @author@	Burton Radons <burton-radons@smocky.com>
// @date@	2005-05-08
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=3924

module dstress.run.t.typeid_86_D;

int main(){
	if(typeid(int function(float)) == typeid(int function(char))){
		assert(0);
	}
	if(typeid(int function(float)) == typeid(byte function(float))){
		assert(0);
	}
	if(typeid(byte function(byte)) == typeid(byte function(int))){
		assert(0);
	}
	if(typeid(void function(int)) == typeid(int function(int))){
		assert(0);
	}
	if(typeid(int function()) == typeid(int function(int))){
		assert(0);
	}

	return 0;
}
