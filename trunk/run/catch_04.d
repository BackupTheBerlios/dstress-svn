// $HeadURL$
// $Date$
// $Author$

// @author@	Stewart Gordon <smjg_1998@yahoo.com>
// @date@	2005-03-21
// @uri@	news:d1mbr0$2peg$2@digitaldaemon.com

// __DSTRESS_DFLAGS__ -debug

module dstress.run.catch_04;

int main() {
	int dummy;

	assert(dummy==0);

	try {
	} catch {
		debug dummy++;
	}

	assert(dummy==0);

	return 0;
}
