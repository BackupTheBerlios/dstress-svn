// $HeadURL$
// $Date$
// $Author$

// @author@	Thomas Kuehne <thomas-dloop@kuehne.thisisspam.cn>
// @date@	2004-11-17
// @uri@	news:l3hr62-qov.ln1@kuehne.cn
// @url@	nntp://digitalmars.com/digitalmars.D.bugs/2289

module dstress.run.switch_14;

int main(){
	dchar[] array = "123";
	switch(array){
		case "12":{
			assert(0);
		}case "123":{
			return 0;
		}case "1234":{
			assert(0);
		}default:{
			assert(0);
		}
	}
}
