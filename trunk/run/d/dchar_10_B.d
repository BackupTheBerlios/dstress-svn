// $HeadURL$
// $Date$
// $Author$

// @author@	Stewart Gordon <smjg_1998@yahoo.com>
// @date@	2005-12-12
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=5835

module dstress.run.d.dchar_10_B;

int main(){
	dchar[] x = "\uDBC4\uDD11"c;

	if(1 != x.length){
		assert(0);
	}

	if(x[0] == 0x101111){
		return 0;
	}
}
