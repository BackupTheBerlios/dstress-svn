// $HeadURL$
// $Date$
// $Author$

// @author@	Ivan Senji <ivan.senji_REMOVE_@_THIS__gmail.com>
// @date@	2005-10-24
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=5191

module dstress.run.t.template_class_11_A;

class array(T) {
	static T[] opIndex(T[] a ...) {
		return a.dup;
	}
}

int main(){
	float[] f = array!(float)[1, 2, 3];

	assert(f.length == 3);
	assert(f[0] == 1.0);
	assert(f[1] == 2.0);
	assert(f[2] == 3.0);

	return 0;
}
