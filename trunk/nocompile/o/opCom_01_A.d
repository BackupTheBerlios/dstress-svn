// $HeadURL$
// $Date$
// $Author$

// @author@	Oskar Linde <oskar.lindeREM@OVEgmail.com>
// @date@	2006-02-28
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=6401

// __DSTRESS_ELINE__ 16

module nocompile.run.o.opCom_01_A;

void main(){
	bool a = false;

	a = ~a;
}
