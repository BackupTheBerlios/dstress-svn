// $HeadURL$
// $Date$
// $Author$

// @author@	zwang <nehzgnaw@gmail.com>
// @date@	2005-05-05
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=3896

module dstress.compile.interface_20;

interface A:B{
}

interface B:C{
}

interface C:D{
}

interface D{
}
