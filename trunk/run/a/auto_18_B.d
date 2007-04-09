// $HeadURL$
// $Date$
// $Author$

// @author@	Ivan Senji <ivan.senji_REMOVE_@_THIS__gmail.com>
// @date@	2005-11-28
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=5691

module dstress.run.a.auto_18_B;

int main(){
	static auto a = [[0, 1], [-2, 3, 4], [5]];
	auto b = -2;

	static if(!is(typeof(a[0][0]) : typeof(b))){
		static assert(0);
	}

	if(a.length != 3){
		assert(0);
	}

	if(a[0].length != 2){
		assert(0);
	}
	if(a[0][0] != 0){
		assert(0);
	}
	if(a[0][1] != 1){
		assert(0);
	}

	if(a[1].length != 3){
		assert(0);
	}
	if(a[1][0] != -2){
		assert(0);
	}
	if(a[1][1] != 3){
		assert(0);
	}
	if(a[1][2] != 4){
		assert(0);
	}

	if(a[2].length != 1){
		assert(0);
	}
	if(a[2][0] != 5){
		assert(0);
	}
	return 0;
}

