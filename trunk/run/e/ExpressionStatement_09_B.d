// $HeadURL$
// $Date$
// $Author$

// @author@	Bruno Medeiros <daiphoenixNO@SPAMlycos.com>
// @date@	2006-01-06
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=5989


module dstress.run.e.ExpressionStatement_09_B;

int status;

void func() {
	status++;
}

int main(){
	func, func();
	if(status == 2){
		return 0;
	}
}
