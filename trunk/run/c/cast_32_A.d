// $HeadURL$
// $Date$
// $Author$

// @author@	Aziz Köksal <aziz.kerim@gmail.com>
// @date@	2006-10-08
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=407
// @desc@	[Issue 407] New: casting array literals to int causes compiler seg-fault

module dstress.run.c.cast_32_A;

int main(){
	if(! *cast(int*)"0"c){
		assert(0);
	}

	return 0;
}
