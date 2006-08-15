// $HeadURL$
// $Date$
// $Author$

// @author@	icee <iceelyne@gmail.com>
// @date@	2006-08-14
// @uri@	news:bug-287-3@http.d.puremagic.com/issues/
// @desc@	[Issue 287] DMD optimization bug arround dynamic array length

module dstress.run.o.odd_bug_07_B;

int status;

void validate(int a, int b){
	if(a != status){
		assert(0);
	}
	status += 4;
	
	if(b != status){
		assert(0);
	}
}

int main(){
        int x = 0;
        int y = 0;
        char[] sa = "abcd";

        for(int i = 0; i < 10; i++){
                y = x + sa.length;
		validate(x, y);
                x = y;
        }

	if(status != 40){
		assert(0);
	}

	return 0;
}
