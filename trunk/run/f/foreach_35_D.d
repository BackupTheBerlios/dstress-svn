// $HeadURL$
// $Date$
// $Author$

// @author@	<ericanderton@yahoo.com>
// @date@	2006-04-08
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=95

module dstress.run.f.foreach_35_D;

int main(){
	int[int] array;
	array[2] = 3;
	array.remove(2);

	if(array.keys.length != 0){
		assert(0);
	}

	foreach(int elem; array){
		assert(0);
	}

	return 0;
}

