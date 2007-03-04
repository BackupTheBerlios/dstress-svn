// $HeadURL$
// $Date$
// $Author$

// @author@	Brian Hjøllund <Brian_member@pathlink.com>
// @date@	2005-01-11
// @uri@	news:cs0tm5$1m35$1@digitaldaemon.com
// @uri@	nttp://news.digitalmars.com/digitalmars.D.bugs/2670

module dstress.compile.const_13;

const int A = -831;

enum{
	B = A
}
