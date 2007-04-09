// $HeadURL$
// $Date$
// $Author$

// @author@	Thomas Kuehne <thomas-dloop@kuehne.thisisspam.cn>
// @date@	2004-11-17
// @uri@	news:l3hr62-qov.ln1@kuehne.cn
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=2289

// duplicate case "123" in switch statement

// __DSTRESS_ELINE__ 22

module dstress.nocompile.switch_13;

int main(){
	dchar[] array = "123";
	switch(array){
		case "123":{
			assert(0);
			break;
		}case "123":{
			assert(1);
			break;
		}default:{
			return -1; // dummy
		}
	}
		
}
