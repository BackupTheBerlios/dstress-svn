// $HeadURL$
// $Date$
// $Base$

// @author@	Thomas Kuehne <thomas-dloop@kuehne.thisisspam.cn>
// @date@	2004-12-10
// @uri@	news:sr8p82-lu3.ln1@kuehne.cn
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=2528

module dstress.run.super_08;

int dummy;

class Parent{
	this(){
		dummy++;
	}
}

class Child : Parent{
	this(){
		super();
	}
}

int main(){
	Child o = new Child();
	return dummy-1;
}
