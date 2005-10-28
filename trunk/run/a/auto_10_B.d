// $HeadURL: svn://dstress.kuehne.cn/run/c/creal_26_B.d $
// $Date: 2005-06-01 15:02:35 +0200 (Wed, 01 Jun 2005) $
// $Author: thomask $

module dstress.run.c.auto_10_B;

int main(){
	auto x = 4;
	
	assert(typeid(typeof(x)).toString() == "int");
	
	return 0;
}
