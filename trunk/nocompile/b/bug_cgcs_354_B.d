// $HeadURL$
// $Date$
// $Author$

// @author@	Lukas Pinkowski <lukas.pinkowski@web.de>
// @date@	2005-11-14
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=5464

// __DSTRESS_ELINE__ 17

module dstress.run.b.bug_cgcs_354_B;

void main(){
	int i;
	ubyte[] ub;
	ub.length = 4;
	ub[] = cast(ubyte[4]) &i;
}

