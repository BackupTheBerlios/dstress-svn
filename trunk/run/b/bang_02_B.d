#! blah foo

// $HeadURL$
// $Date$
// $Author$

// @author@	Thomas Kuehne <thomas-dloop@kuehne.cn>
// @date@	2006-02-16
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=6280

module dstress.run.b.bang_02_B;

int main(){
	static if(__LINE__ == 14){
		return 0;
	}
}

