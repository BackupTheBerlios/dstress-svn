// $HeadURL$
// $Date$
// $Author$

// @author@	Jarrett Billingsley <kb3ctd2@yahoo.com>
// @date@	2005-04-22
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=3780

// __DSTRESS_ELINE__ 14

module dstress.nocompile.alignof_01;

class A{
	static size_t alignof(){
		return 30u;
	}
}
