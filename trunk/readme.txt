Project:
	DStress

URL:
	http://dmd.kuehne.cn/dstress.html

Description:
	stress tests and bug checks for D-language compilers

Condition Passed:
	1) no assertion is thrown
	and 2) return value of main is 0 (zero)

Condition Failed:
	1) compiler error
	2) linker error
	3) wrong assertion
	4) return value of main isn't 0 (zero)

Output Synopsis:
	FAIL:	expected failure
	XFAIL:	unexpected failure
	PASS:	expected pass
	XPASS:	unexpected pass
	
