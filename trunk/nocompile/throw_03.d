
class NoException{
}

int main(){
	try{
		throw new NoException();
	}catch{
		assert(0);
	}
	return 0;
}
