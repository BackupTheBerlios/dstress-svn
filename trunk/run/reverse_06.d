// $HeadURL$
// $Date$
// $Author$

// @author@	Thomas Kuehne <thomas-dloop@kuehne.thisisspam.cn>
// @date@	2005-04-23
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=3791

module dstress.run.reverse_06;

int main(){
	wchar[] a;
	wchar[] r;

	a = "abcd";
	a = a.dup;
	r = a.reverse;
	assert(r=="dcba");
	assert(r.ptr==a.ptr);

	a = "-\U000000A1\U00000901\U0000FFEE\U00010000\U000FFFFD_";
	a = a.dup;
	r = a.reverse;
	assert(r == "_\U000FFFFD\U00010000\U0000FFEE\U00000901\U000000A1-");
	assert(a.ptr==r.ptr);

	return 0;
}
