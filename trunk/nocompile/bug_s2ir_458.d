// @author@	k2 <k2_member@pathlink.com>
// @date@	2004-10-31
// @uri@	news://cm3gas$1il0$1@digitaldaemon.com
// @url@	nttp://digitalmars.com/digitalmars.D.bugs:2166

module dstress.nocompile.bug_s2ir_458;

void main(){
	try{
		break;
	}catch{
	}
}
