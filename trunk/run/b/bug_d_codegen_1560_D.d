// $HeadURL$
// $Date$
// $Author$

// @author@	Thomas Kuehne <thomas-dloop@kuehne.cn>
// @uri@	news:la2373-ccr.ln1@birke.kuehne.cn

module dstress.run.b.bug_d_codegen_1560_D;

void get(void[] value){
}

void get(int value){
	get((&value)[0 .. 1]);
}

int main(){
	return 0;
}
