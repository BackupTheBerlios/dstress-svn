// $HeadURL$
// $Date$
// $Author$

// @author@	Thomas Kuehne <thomas-dloop@kuehne.cn>
// @date@	2005-11-26
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=5668

module dstress.run.a.auto_12_A;

struct S{
	int i;
}

int main(){
	auto s = new S;
	if(s.i != 0){
		assert(0);
	}

	return 0;
}

