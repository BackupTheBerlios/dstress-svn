// $HeadURL$
// $Date$
// $Author$

// @author@	Thomas Kuehne <thomas-dloop@kuehne.thisisspam.cn>
// @date@	2004-11-17
// @uri@	news:u1gr62-kjv.ln1@kuehne.cn
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=2288

// duplicate case "123" in switch statement

// __DSTRESS_ELINE__ 24

module dstress.nocompile.switch_09;

const char[]  c = "123";

int main(){
	char[] array = "123";
	switch(array){
		case "123":{
			assert(0);
			break;
		}case c:{
			assert(1);
			break;
		}default:{
			return -1; // dummy
		}
	}
		
}
