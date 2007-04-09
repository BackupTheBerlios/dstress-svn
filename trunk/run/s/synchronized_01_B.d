// $HeadURL$
// $Date$
// $Author$

// @author@	Regan Heath <regan@netwin.co.nz>
// @date@	2005-07-07
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=4466

module dstress.run.s.synchronized_01_B;

int main(){
	Object data = new Object();
	
	synchronized(data) {
	}

	return 0;
}
