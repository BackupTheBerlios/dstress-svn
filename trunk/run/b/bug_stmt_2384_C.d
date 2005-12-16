// $HeadURL$
// $Date$
// $Author$

// @author@	Thomas Kuehne <thomas-dloop@kuehne.cn>
// @news@	news:rom273-05q.ln1@birke.kuehne.cn

module dstress.run.b.bug_stmt_2384_C;

void outer(){
	void inner(){
		throw new Exception("msg");
	}
	inner();
}

int main(){
	try{
		outer();
	}catch(Exception e){
		return 0;
	}
}
