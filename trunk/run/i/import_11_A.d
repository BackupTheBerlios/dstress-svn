// $HeadURL$
// $Date$
// $Author$

// @author@	Stewart Gordon <smjg_1998@yahoo.com>
// @date@	2005-10-26
// @uri@	news:djnicb$1a5t$1@digitaldaemon.com
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=714

// __DSTRESS_DFLAGS__ run/i/import_11_B.d

module /*dstress.*/run.i.import_11_A;
import /*dstress.*/run.i.import_11_B;

int array[Enum.max + 1];

int main(){
	assert(array.length == 3);
	return 0;
}

