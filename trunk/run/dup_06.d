// $HeadURL$
// $Date$
// $Author$

// @author@	Thomas Kuehne <thomas-dloop@kuehne.thisisspam.cn>
// @date@	2005-04-23
// @uri@	news:ibopj2-3qi.ln1@lnews.kuehne.cn

module dstress.run.dup_06;

int main(){
	wchar[] a= "abc".dup;
	wchar[] b=a.dup;
	assert(a=="abc");
	assert(a==b);
	assert(a.ptr!=b.ptr);
	return 0;
}
