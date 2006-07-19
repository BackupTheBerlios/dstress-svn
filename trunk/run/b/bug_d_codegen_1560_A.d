// $HeadURL$
// $Date$
// $Author$

// @author@	Thomas Kuehne <thomas-dloop@kuehne.cn>
// @uri@	news:la2373-ccr.ln1@birke.kuehne.cn

module dstress.run.b.bug_d_codegen_1560_A;

class C{

	void set(void[] result){
	}

	void set(int result){
		set((&result)[0 .. 1]);
	}

	void get(void[] value){
	}

	void get(int value){
		get((&value)[0 .. 1]);
	}
}

int main(){
	return 0;
}
