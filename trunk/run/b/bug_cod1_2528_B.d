// $HeadURL$
// $Date$
// $Author$

// @author@	Vladimir <thecybershadow@gmail.com>
// @date@	2007-04-03
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=1092
// @desc@	[Issue 1092] compiler crash in ..\ztc\cod1.c 2528

module dstress.run.b.bug_cod1_2528_B;

int main(){
        byte x = 'Z';
	byte[] y = [x];
        void[] z = cast(void[])y;

	if('Z' != (cast(byte[]) z)[0]){
		assert(0);
	}

	return 0;
}

