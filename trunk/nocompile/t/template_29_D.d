// $HeadURL$
// $Date$
// $Author$

// @author@	BCS <BCS_member@pathlink.com>
// @date@	2006-02-16
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=6290
// @desc@	Internal error: e2ir.c 736

module dstress.nocompile.t.template_29_D;

template foo(size_t i){
	static if(i > 0){
		const size_t foo = foo!(i-1);
	}else{
		const size_t foo = 1;
	}
}

int main(){
	return foo!(size_t.max);
}

