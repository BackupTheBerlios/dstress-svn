// $HeadURL$
// $Date$
// $Author$

// @author@	Ivan Senji <ivan.senji_REMOVE_@_THIS__gmail.com>
// @date@	2005-11-28
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=5691

module dstress.run.a.auto_18_C;

int main(){
	static auto a = [1, -2, 3];
	auto b = -2;

	static if(!is(typeof(a[0]) : typeof(b))){
		static assert(0);
	}

	if(a.length != 3){
		assert(0);
	}

	if(a[0] != 3){
		assert(0);
	}
	if(a[1] != -2){
		assert(0);
	}
	if(a[2] != 1){
		assert(0);
	}

	return 0;
}

