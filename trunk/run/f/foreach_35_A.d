// $HeadURL$
// $Date$
// $Author$

// @author@	<ericanderton@yahoo.com>
// @date@	2006-04-08
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=95

module dstress.run.f.foreach_35_A;

int main(){
	int[] array;
	foreach(int elem; array){
		assert(0);
	}

	return 0;
}

