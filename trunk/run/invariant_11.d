// $HeadURL$
// $Date$
// $Author$

// @author@	Thomas Kuehne <thomas-dloop@kuehne.thisisspam.cn>
// @date@	2004-10-22
// @uri@	news:clbr09$uc6$1@digitaldaemon.com
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=2140

// the name function name "_invariant" isn't forbidden (dmd-0.104 documentation)
module dstress.run.invariant_11;

class MyClass{
        void _invariant(){
                assert(0);
        }

	invariant{
		assert(0);
	}
}

int main(){
        MyClass c = new MyClass();
        return 0;
}

