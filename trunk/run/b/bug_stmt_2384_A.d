// $HeadURL$
// $Date$
// $Author$

// @author@	Thomas Kuehne <thomas-dloop@kuehne.cn>
// @uri@	news:0vj273-g0q.ln1@birke.kuehne.cn

module dstress.run.b.bug_stmt_2384_A;

void outer(){
	int inner(){
		return 1;
	}
}

int main(){
	return 0;
}
