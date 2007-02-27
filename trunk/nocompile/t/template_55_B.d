// $HeadURL$
// $Date$
// $Author$

// @author@	Sean Kelly <sean@f4.ca>
// @date@	2006-12-28
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=763
// @desc@	[Issue 763] Segfault compiling template code on Linux

module /*dstress.*/nocompile.t.template_55_B;
import /*dstress.*/compile.t.template_55_A;
 
void fn(){
 	find!(char[])();
}
