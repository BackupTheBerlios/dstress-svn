// $HeadURL$
// $Date$
// $Author$

// @author@	Nick <Nick_member@pathlink.com>
// @date@	2006-02-10
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=6201

// __DSTRESS_ELINE__ 15

module dstress.run.o.opCat_20;

int main(){
	char[][] a;
	a = a ~ "eins";
	a = a ~ "zwei";

	if(a.length == 2){
		if(a[0] == "eins"){
			if(a[1] == "zwei"){
				return 0;
			}
			assert(0);
		}
		assert(0);
	}
}
