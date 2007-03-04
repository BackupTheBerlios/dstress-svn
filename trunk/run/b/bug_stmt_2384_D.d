// $HeadURL$
// $Date$
// $Author$

// @author@	Thomas Kuehne <thomas-dloop@kuehne.cn>
// @uri@	news:rom273-05q.ln1@birke.kuehne.cn

module dstress.run.b.bug_stmt_2384_D;

void outer(){
	void inner(){
		throw new Exception("msg");
	}
}

int main(){
	outer();
	return 0;
}
