// $HeadURL$
// $Date$
// $Author$

// @author@	Regan Heath <regan@netwin.co.nz>
// @date@	2005-07-07
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=4466

// __DSTRESS_ELINE__ 16

module dstress.nocompile.s.synchronized_01_A;

void main(){
	ubyte[] data;
	
	synchronized(data) {
	}
}
