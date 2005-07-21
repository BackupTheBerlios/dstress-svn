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
	assert(month[1]=="Jan");
	assert(month[6]=="Jun");
	assert(month[8]=="Aug");
	assert(month[12]=="Dec");

	foreach(char c; month[0]){
		assert(c==char.init);
	}

	foreach(char c; month[7]){
		assert(c==char.init);
	}

	return 0;
}
