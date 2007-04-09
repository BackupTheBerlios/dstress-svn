// $HeadURL$
// $Date$
// $Author$

// @author@	Don Clugston <dac@nospam.com.au>
// @date@	2006-02-02
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=6168

// __DSTRESS_ELINE__ 16

module dstress.nocompile.c.const_30_B;

const uint baboon = 3;
const int monkey = 4;

auto ape = monkey * baboon;

