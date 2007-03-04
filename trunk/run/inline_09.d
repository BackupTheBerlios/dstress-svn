// $HeadURL$
// $Date$
// $Author$

// @author@	Thomas Kuehne <thomas-dloop@kuehne.THISISSPAM.cn>
// @date@	2005-02-19
// @uri@	news:cv77ei$27mv$3@digitaldaemon.com
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=3017

module dstress.compile.inline_09;

struct MyStruct{
	static int bug() {
		return 3;
	}
}

int main(){
	assert(MyStruct.bug()==3);
	return 0;
}
