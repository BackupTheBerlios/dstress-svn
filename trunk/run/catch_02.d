// $HeadURL$
// $Date$
// $Author$

// @author@	Stewart Gordon <smjg_1998@yahoo.com>
// @date@	2005-03-21
// @uri@	news:d1mbr0$2peg$2@digitaldaemon.com

module dstress.run.catch_02;

int main() {
	int dummy;

	assert(dummy==0);

	try {
	} catch {
		version(SomeVersion){
			dummy++;
		}
	}

	assert(dummy==0);

	return 0;
}
