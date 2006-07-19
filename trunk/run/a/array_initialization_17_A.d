// $HeadURL$
// $Date$
// $Author$

// @author@	Stewart Gordon <smjg_1998@yahoo.com>
// @date@	2005-06-14
// @uri@	news:d8m7rs$mtv$2@digitaldaemon.com
// @desc@	misplaced initialisers in static rectangular array

module dstress.run.a.array_initialization_17_A;

const char[3][13] month = [
	1: "Jan", "Feb", "Mar", "Apr", "May", "Jun",
	8: "Aug", "Sep", "Oct", "Nov", "Dec"
];


int main(){
	if(month[1] != "Jan"){
		assert(0);
	}
	if(month[6] != "Jun"){
		assert(0);
	}
	if(month[8] != "Aug"){
		assert(0);
	}
	if(month[12] != "Dec"){
		assert(0);
	}

	foreach(char c; month[0]){
		if(c != char.init){
			assert(0);
		}
	}

	foreach(char c; month[7]){
		if(c != char.init){
			assert(0);
		}
	}

	return 0;
}
