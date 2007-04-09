// $HeadURL$
// $Date$
// $Author$

// @author@	Thomas Kuehne <thomas-dloop@kuehne.cn>
// @date@	2005-09-22
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=5052

// __DSTRESS_TORTURE_BLOCK__ -release

module dstess.run.i.in_out_body_09_D;

typedef int intX;

intX test(intX i)
body {
	return cast(intX)(i + 1);
}

int main(){
	assert(test(1)==2);
	return 0;
}
