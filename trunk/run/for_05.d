// $HeadURL$
// $Date$
// $Author$

// @author@	Stewart Gordon <smjg_1998@yahoo.com>
// @date@	2005-04-18
// @uri@	news:d4026v$nc0$5@digitaldaemon.com

module dstress.run.for_05;

int main() {
	int i;
	for (i = 0; i < 10; i++){
		version(dummy) i=22;
	}
	assert(i==10);
	return 0;
}
