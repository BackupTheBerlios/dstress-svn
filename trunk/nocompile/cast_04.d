// @author@	Nick <Nick_member@pathlink.com>
// @date@	2004-08-02
// @uri@	news://cejsno$2g2s$1@digitaldaemon.com
// @url@	nttp://digitalmars.com/digitalmars.D.bugs:1238

module dstress.nocompile.cast_04;

int main(){
	creal c = 3 + 5i;
	double d = c;
	return 0;
}
