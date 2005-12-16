// $HeadURL$
// $Date$
// $Author$

// @author@	Thomas Kuehne <thomas-dloop@kuehne.cn>
// @uri@	news:0vj273-g0q.ln1@birke.kuehne.cn

module dstress.run.b.bug_stmt_2384_B;

int outer(){
	int inner(){
		return 1;
	}
	return inner();
}

int main(){
	if(outer()==1){
		return 0;
	}
}
