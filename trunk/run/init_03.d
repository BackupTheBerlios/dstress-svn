// $HeadURL$
// $Date$
// $Author$

// @author@	Regan Heath <regan@netwin.co.nz>
// @date@	2005-03-19
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=3272

module dstress.run.init_03;

int main(){
        static int[4] array2 = [5,6,7,8];
        TypeInfo i = typeid(typeof(array2.init));
	assert(!(i is null));
	return 0;
}

