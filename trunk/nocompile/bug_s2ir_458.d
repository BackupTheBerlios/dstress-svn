// $HeadURL$
// $Date$
// $Author$

// @author@	k2 <k2_member@pathlink.com>
// @date@	2004-10-31
// @uri@	news:cm3gas$1il0$1@digitaldaemon.com
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=2166

// __DSTRESS_ELINE__ 16

module dstress.nocompile.bug_s2ir_458;

void main(){
	try{
		break;
	}catch{
	}
}
