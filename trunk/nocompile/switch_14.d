// $HeadURL$
// $Date$
// $Author$

// @author@	Thomas Kuehne <thomas-dloop@kuehne.thisisspam.cn>
// @date@	2004-11-17
// @uri@	news:l3hr62-qov.ln1@kuehne.cn
// @url@	nntp://digitalmars.com/digitalmars.D.bugs/2289

// according to dmd-0.106's statement.html#switch
// only integers, char[] and wchar[] are allowed

module dstress.nocompile.switch_14;

int main(){
	dchar[] array = "123";
	switch(array){
		case "123":{
			return 0;
		}default:{
			assert(0);
		}
	}
		
}
