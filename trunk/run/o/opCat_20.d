// $HeadURL$
// $Date$
// $Author$

// @author@	Nick <Nick_member@pathlink.com>
// @date@	2006-02-10
// @uri@	news:dshvbk$qop$1@digitaldaemon.com

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
