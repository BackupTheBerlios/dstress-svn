// $HeadURL$
// $Date$
// $Author$

// @author@	Oskar Linde <oskar.lindeREM@OVEgmail.com>
// @date@	2006-02-28
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=6401

// __DSTRESS_ELINE__ 16

module dstress.nocompile.o.opPos_05_A;

int main(){
	bool a = false;

	a = +a;
}
