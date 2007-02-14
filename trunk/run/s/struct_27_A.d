// $HeadURL$
// $Date$
// $Author$

// @author@	Alan Knowles <alan@akbkhome.com>
// @date@	2007-01-12
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=832
// @desc@	[Issue 832] NRVO: return inside foreach results in junk

module dstress.run.s.struct_27_A;

struct S{
	int i;
	long _forec_nrvo;
}

S first(){
	foreach(element; s){
		if(2 != element.i){
			assert(0);
		}
		return element;
	}
}

S[1] s;

int main(){
	s[0].i = 2;
	if(2 != first().i){
		assert(0);
	}

	return 0;
}
