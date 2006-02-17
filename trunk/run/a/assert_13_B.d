// $HeadURL$
// $Date$
// $Author$

// @author@	Derek Parnell <derek@psych.ward>
// @date@	2006-02-16
// @uri@	news:9zjj1lakhsqb$.vh2lqmuohfvm$.dlg@40tude.net

module dstress.run.a.assert_13_B;

int main(){
	char[] s;
	assert(s = "\u00aa", "\u00aa\uff16");

	return 0;
}
