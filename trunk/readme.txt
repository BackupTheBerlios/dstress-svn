Project:
	DStress

URL:
	http://dmd.kuehne.cn/dstress.html
	mailto:dstress@kuehne.cn

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

Output Synopsis: (DejaGnu / POSIX 1003.3)
	PASS:	expected pass
	XPASS:	unexpected pass
	FAIL:	unexpected fail
	XFAIL:	expected fail
	ERROR:	test error (compiler, linker or test case segfaulted)

Source code comments:
	@author@ 	reporter / author
	@date@ 		year-month-day
	@uri@		message id
	@url@		message xRef
	@WARNING@	external dependencies (e.g. Phobos)
	§DSTRESS_FLAGS§	everything following in the same line will be interpreted as _additional_ compiler flags
