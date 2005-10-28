// $HeadURL: svn://dstress.kuehne.cn/run/c/creal_26_B.d $
// $Date: 2005-06-01 15:02:35 +0200 (Wed, 01 Jun 2005) $
// $Author: thomask $

// __DSTRESS_DFLAGS__ -d

module dstress.run.d.deprecated_21_B;

deprecated x = 4;

int main(){
	assert(typeid(typeof(x)).toString() == "int");
	
	return 0;
}
