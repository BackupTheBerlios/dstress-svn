// $HeadURL$
// $Date$
// $Author$

// @author@	tetsuya <tetsuya_member@pathlink.com>
// @date@	2005-09-02
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=4912

// __DSTRESS_ELINE__ 14

module dstress.nocompile.a.assert_11_B;

void main(){
	static assert(0 < -1);
}
