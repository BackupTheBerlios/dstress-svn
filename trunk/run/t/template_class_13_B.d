// $HeadURL$
// $Date$
// $Author$

// @author@	Thomas Kuehne <thomas-dloop@kuehne.cn>
// @date@	2005-11-26
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=5669

module dstress.run.t.template_class_13_B;

class C(float f){
	float cf = f;
}

int main(){
	const float a = 1.2;
	C!(a) sa = new C!(a);
	assert(sa.cf == a);

	return 0;
}
