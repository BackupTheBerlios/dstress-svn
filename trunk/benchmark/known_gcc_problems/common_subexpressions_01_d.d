// $HeadURL$
// $Date$
// $Author$

/*
 * (25 Aug 2001) Common subexpression elimination cannot merge
 * calculations that take place in different machine modes.
 */

import std.string;
import std.c.stdio;
import std.c.time;

// @bugwatch@ handle a bug in Phobos versions prior to dmd-0.106
version(linux){
        const double CLOCKS_PER_SEC = 1000000.0;
}else version(darwin){
        const double CLOCKS_PER_SEC = 100.0;
}

static const char[] trigraph_map = [
  '|', 0, 0, 0, 0, 0, '^',
  '[', ']', 0, 0, 0, '~',
  0, '\\', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
  0, '{', '#', '}'
];

char map (char c)
{
  if (c >= '!' && c <= '>')
    return trigraph_map[c - '!'];
  return 0;
}

int main(char[][] argv) {
	if(argv.length!=2){
		printf("%.*s%.*s",argv[0],": n\n\tn - number of times to repeat the loop\n");
		return 0;
	}
	int n = atoi(argv[1]);
	char dummy= cast(char)n;
	printf("common_subexpression_01(%d)\n",n);
	clock_t start=clock();
	while(n--){
		dummy = map(dummy);
	}
	clock_t end=clock();
	double passed = end - start;
	passed /= (cast(double)CLOCKS_PER_SEC);
	printf("%d (%e seconds)\n", dummy, passed);
	printf("");
	return 0;
}

/*
GCC generates this assembly:


map:
        movzbl  4(%esp), %edx
        xorl    %ecx, %ecx
        movb    %dl, %al
        subb    $33, %al
        cmpb    $29, %al
        ja      .L1
        movzbl  %dl, %eax
        movzbl  trigraph_map-33(%eax), %ecx
.L1:
        movl    %ecx, %eax
        ret


Notice how we subtract 33 from <code>%al</code>, throw that value
away, reload <code>%eax</code> with the original value, and then
subtract 33 again (with a linker relocation; the processor does not
do the subtraction twice).

<p>It would be just as easy to extend the value in <code>%al</code>
and use it directly.  (<code>%al</code> is the bottom eight bits of
<code>%eax</code>, so you might think it wasn't even necessary to do
the extend.  However, modern x86 processors treat them as separate
registers unless forced, which costs a pipeline stall.)  That might
look something like this:</p>

<pre>
map:
	movzbl	4(%esp), %eax
	xorl	%ecx, %ecx
	subl	$33, %eax
	cmpl	$29, %eax
	ja	.L1
	movzbl	trigraph_map(%eax), %ecx
.L1:
	movl	%ecx, %eax
	ret
</pre>

<p>This saves a register as well as a couple of move instructions.  If
this routine were to be inlined, that would become important.  We
still have unnecessary moves in this version: simply by interchanging
<code>%ecx</code> and <code>%eax</code> throughout, we can get rid of
the final move.</p>

<pre>
map:
	movzbl	4(%esp), %ecx
	xorl	%eax, %eax
	subl	$33, %ecx
	cmpl	$29, %ecx
	ja	.L1
	movzbl	trigraph_map(%ecx), %eax
.L1:
	ret
</pre>

<p>The difficulty is that common subexpression elimination is
concerned with potential differences between these pseudo-RTL
expressions:</p>

<pre>	(zero_extend:SI (minus:QI (reg:QI 27) (const_int 33)))

	(minus:SI (zero_extend:SI (reg:QI 27)) (const_int 33))
</pre>

<p>It is true that, were the value of <code>(reg:QI 27)</code>
arbitrary, these two calculations could give different results.
However, we know that can't happen here, because <code>(reg:QI
27)</code> is known to be positive at the time we attempt to do the
<code>zero_extend</code>.  If it were negative, we would have jumped
to <code>.L1</code>.</p>

*/
