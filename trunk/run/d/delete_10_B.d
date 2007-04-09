// $HeadURL$
// $Date$
// $Author$

// @author@	Jay <Jay_member@pathlink.com>
// @date@	2005-07-05
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=4440

module dstress.run.d.delete_10_B;

union Box{
	int i;
}

int main(){
	Box*[10] boxes;
	boxes[0] = new Box;
	delete boxes[0];
	return 0;
}
