// $HeadURL$
// $Date$
// $Author$

// @author@	zwang <nehzgnaw@gmail.com>
// @date@	2005-04-20
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=3756

// __DSTRESS_ELINE__ 19

module dstress.nocompile.interface_15;

interface A:B{
}

interface B:C{
}

interface C:A{
}

