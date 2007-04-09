// $HeadURL$
// $Date$
// $Author$

// @author@	Thomas Kuehne <thomas-dloop@kuehne.cn>
// @date@	2006-02-11
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=6225

module dstress.run.w.wchar_12_E;

int main(){
	static assert("abcde"w.sizeof == 10);

	return 0;
}
