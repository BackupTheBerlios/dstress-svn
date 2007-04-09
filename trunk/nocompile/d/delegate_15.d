// $HeadURL$
// $Date$
// $Author$

// @author@	Deewiant <deewiant.doesnotlike.spam@gmail.com>
// @date@	2005-07-13
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=4526

// __DSTRESS_ELINE__ 14

module dstress.nocompile.d.delegate_15;

void main() {
	int f = &delegate(){};
}