// $HeadURL$
// $Date$
// $Author$

// @author@	Thomas Kuehne <thomas-dloop@kuehne.thisisspam.cn>
// @date@	2005-04-10
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=3597

// __DSTRESS_ELINE__ 17

module dstress.nocompile.unittest_07;

unittest{
}

void test(){
	void function() u = &unittest0;
}

