// $HeadURL$
// $Date$
// $Author$

// @author@	Thomas Kuehne <thomas-dloop@kuehne.cn>
// @uri@	news:teh273-cpp.ln1@birke.kuehne.cn

module dstress.run.b.bug_stor_layout_382_A;

struct Dog{
	int length;
	void* ptr;
}

struct Cat{
	Cat* left;
	Cat* right;
}

void foo(Cat*[] c, ...){
}

Dog bar(Cat*[] c, uint k, uint v){
	Dog d;

	d.ptr = new byte[d.length];
	return d;
}

Dog bug(){
	Dog d;
	return d;
}

void dummy(byte[] res){
}

int main(){
	return 0;
}
