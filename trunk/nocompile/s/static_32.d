// $HeadURL$
// $Date$
// $Author$

// @author@	Deewiant <deewiant.doesnotlike.spam@gmail.com>
// @date@	2005-06-21
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=4380

// __DSTRESS_ELINE__ 14

module dstress.nocompile.s.static_32;

void main(){
	static{
		int x;
	}
}

