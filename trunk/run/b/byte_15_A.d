// $HeadURL$
// $Date$
// $Author$

module dstress.run.b.byte_15_A;

int main(){
	const byte b = -023;

	static if(b == -19){
		return 0;
	}
}
