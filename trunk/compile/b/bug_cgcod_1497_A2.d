// $HeadURL$
// $Date$
// $Author$

// @author@	MicroWizard <MicroWizard_member@pathlink.com>
// @date@	2005-11-04
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=5299

module dstress.compile.b.bug_cgcod_1497_A2;

class C{
	private void bug(char[] array){
		bug(array[1 .. array.length]);
	}
}
