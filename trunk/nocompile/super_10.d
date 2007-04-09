// $HeadURL$
// $Date$
// $Author$

// @author@	Carlos Santander B. <csantander619@gmail.com>
// @date@	2005-04-07
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=3545

// __DSTRESS_ELINE__ 15

module dstress.nocompile.super_10;

class A{
	void foo(){
		super();
	}
}
