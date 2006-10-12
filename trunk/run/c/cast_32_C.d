// $HeadURL$
// $Date$
// $Author$

// @author@	Aziz Köksal <aziz.kerim@gmail.com>
// @date@	2006-10-08
// @uri@	news:bug-407-3@http.d.puremagic.com/issues/
// @desc@	[Issue 407] New: casting array literals to int causes compiler seg-fault

module dstress.run.c.cast_32_C;

int main(){
	if(! *cast(int*)cast(char[1])[cast(char)'0']){
		assert(0);
	}

	return 0;
}
