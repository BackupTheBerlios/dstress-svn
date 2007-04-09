// $HeadURL$
// $Date$
// $Author$

// @author@	Ben Hinkle <bhinkle@mathworks.com>
// @date@	2004-09-22
// @uri@	news:cis04m$2h9v$1@digitaldaemon.com
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=1904

module dstress.run.typeid_03;

int main() {
	TypeInfo ti = typeid(int);
	return 0;
}
