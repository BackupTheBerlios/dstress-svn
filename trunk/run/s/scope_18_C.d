// $HeadURL$
// $Date$
// $Author$

// @author@	Thomas Kühne <thomas-dloop@kuehne.cn>
// @date@	2007-01-07
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=815
// @desc@	[Issue 815] scope(exit) isn't executed when "continue" is used to continue a while-loop

module dstress.run.s.scope_18_C;

int main(){
	int[] log;
	int i = 3;

	while(i--){
		scope(failure){
			log ~= 0xEE;
		}
		log ~= i;
		
		if(i % 2){
			continue;
		}
		log ~= 0xFF;
	}

	if([2, 0xFF, 1, 0, 0xFF] != log){
		assert(0);
	}

	return 0;
}
