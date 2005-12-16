// $HeadURL$
// $Date$
// $Author$

// @author@	Thomas Kuehne <thomas-dloop@kuehne.cn>
// @uri@	news:23p273-9bq.ln1@birke.kuehne.cn

module dstress.run.b.bug_d_codegen_1228_J;

int find(){
	foreach(char c; "blah"w){
		return 0;
	}
}

int main(){
	if(find() == 0){
		return 0;
	}
}
