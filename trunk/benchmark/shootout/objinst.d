/* The Great Computer Language Shootout
   http://shootout.alioth.debian.org/

   http://www.bagley.org/~doug/shootout/

   converted to D by Dave Fladebo
   compile: dmd -O -inline -release objinst.d
*/

import std.stdio, std.string;

void main(char[][] args)
{
	int n = args.length > 1 ? atoi(args[1]) : 1;

    Toggle toggle1 = new Toggle(true);
    for(int i = 0; i < 5; i++)
    {
        writefln(toggle1.activate().value() ? "true" : "false");
    }

    for(int i = 0; i < n; i++)
    {
        Toggle toggle = new Toggle(true);
    }

    writefln();

    NthToggle ntoggle1 = new NthToggle(true, 3);
    for(int i = 0; i < 8; i++)
    {
        writefln(ntoggle1.activate().value() ? "true" : "false");
    }

    for(int i = 0; i < n; i++)
    {
        NthToggle ntoggle = new NthToggle(true, 3);
    }
}

class Toggle
{
package:
    bool state;

    this(bool start_state) { state = start_state; }

    bool value()
    {
        return(state);
    }

    Toggle activate()
    {
        state = !state;
        return(this);
    }
}

class NthToggle: Toggle
{
package:
    int count_max;
    int counter;

    this(bool start_state, int max_counter) { super(start_state); count_max = max_counter; }

    Toggle activate()
    {
        counter++;
        if(counter >= count_max)
        {
            state = !state;
            counter = 0;
        }
        return(this);
    }
}
