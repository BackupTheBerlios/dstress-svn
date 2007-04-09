// $HeadURL$
// $Date$
// $Author$

// @author@	Sean Kelly <sean@f4.ca>
// @date@	2005-08-05
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=4696

// __DSTRESS_ELINE__ 15

module dtsress.nocompile.s.synchronized_02_A;

void main(){
	synchronized(
			foo
		)
	{
		// blah
	}
}