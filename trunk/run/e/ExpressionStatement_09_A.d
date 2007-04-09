// $HeadURL$
// $Date$
// $Author$

// @author@	Bruno Medeiros <daiphoenixNO@SPAMlycos.com>
// @date@	2006-01-06
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=5989


module dstress.run.e.ExpressionStatement_09_A;

int status;

void func() {
	status++;
}

int main(){
	func;
	if(status == 1){
		return 0;
	}
}
