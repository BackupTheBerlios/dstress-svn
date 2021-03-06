/* The Great Computer Language Shootout
   http://shootout.alioth.debian.org/

   contributed by Dave Fladebo
   compile: dmd -O -inline -release wordfreq.d
*/

import std.stream, std.stdio;

void main()
{
    const char[4096]    buffer;
    int[char[]]         words;
    char[]              word = new char[16];
    int                 nread, chrpos;

    while((nread = std.stream.stdin.readBlock(buffer, buffer.length)) > 0)
    {
        for(int idx = 0; idx < nread; idx++)
        {
            char chr = buffer[idx];
            if((chr >= 'a' && chr <= 'z') || (chr >= 'A' && chr <= 'Z'))
            {
                if(word.length <= chrpos) word.length = chrpos * 2;
                word[chrpos++] = chr < 'a' ? chr + ('a' - 'A') : chr;
            }
            else if(chrpos)
            {
                int* pVal = (word[0..chrpos] in words);
                if(pVal) (*pVal)++;
                else words[word[0..chrpos].dup] = 1;
                chrpos = 0;
            }
        }
    }

    int[char[]] data;
    char[] str = new char[word.length + 16];
    foreach(char[] word, int val; words)
    {
        int len = sprintf(str,"%7d %.*s", val, word);
        data[str[0..len].dup] = val;
    }

    char[][] keys = data.keys;
    foreach(char[] key; keys.sort.reverse)
    {
        writefln(key);
    }
}
