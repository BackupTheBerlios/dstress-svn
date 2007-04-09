// $HeadURL$
// $Date$
// $Author$

// @author@	Brian Hjøllund <Brian_member@pathlink.com>
// @date@	2005-01-11
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=2670
// @uri@	nttp://news.digitalmars.com/digitalmars.D.bugs/2670

module dstress.compile.const_13;

const int A = -831;

enum{
	B = A
}
