// $HeadURL$
// $Date$
// $Author$

module dstress.run.n.new_04_B;

char[] status;
int count;

struct S{
	int dummy;

	new (size_t i, char[] msg){
		status = msg;
		count++;

		return (new ubyte[i]).ptr;
	}
}

int main(){
	if(status.length != 0){
		assert(0);
	}

	S s;
	
	if(status.length != 0){
		assert(0);
	}

	if(count != 0){
		assert(0);
	}

	if(&s is null){
		assert(0);
	}

	S* p = new("abc") S;

	if(status != "abc"){
		assert(0);
	}

	if(count != 1){
		assert(0);
	}
	
	if(p is null){
		assert(0);
	}

	return 0;
}
