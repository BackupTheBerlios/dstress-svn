/* -*- mode: d -*-
 * $HeadURL$
 *
 * http://www.functionalfuture.com/d/
 * http://www.bagley.org/~doug/shootout/
 *
 * this program is modified from:
 *   http://cm.bell-labs.com/cm/cs/who/bwk/interps/pap.html
 * Timing Trials, or, the Trials of Timing: Experiments with Scripting
 * and User-Interface Languages</a> by Brian W. Kernighan and
 * Christopher J. Van Wyk.
 *
 */

import std.stream;

const int IN = 1;
const int OUT = 0;

int main()
{
    int i, nl, nw, nc, state, nread;
    char c;
    char buf[4096];

    state = OUT;
    nl = nw = nc = 0;

    while ((nread = stdin.readBlock(buf, buf.length)) > 0)
    {
        nc += nread;
        for (i = 0; i < nread; i++)
        {
            c = buf[i];
            if (c == '\n')
                ++nl;

            if (c == ' ' || c == '\n' || c == '\t')
                state = OUT;
            else if (state == OUT)
            {
                state = IN;
                ++nw;
            }
        }
    }

    printf("%d %d %d\n", nl, nw, nc);
    return(0);
}


