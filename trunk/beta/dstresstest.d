/* 

DStressTest
by J C Calvarese 
License: Public Domain


Creates a batch file that will run through 
tests and output results to files.

(Designed for Windows.)

Compiling instructions:

dmd dstresstest.d -unittest
dstresstest.exe
pause

*/

import std.recls; /* for Search */
import std.stream; /* for File */
import std.string; /* for replace, find, & tolower */
import std.file; /* for getcwd */
import std.path; /* for sep, linesep */

alias std.path.sep dirSep;
alias std.path.linesep lineSep;
alias std.path.pathsep pathSep;

enum TryToCompileEnum
{
    dontKnow,
    shouldCompile,
    shouldntCompile,
    dontTry,
    shouldntRun, 
    shouldRun 
}

const char[] dstressFlag = "__DSTRESS_DFLAGS__";
const char[] testFile = "test.bat";


void main()
{   
    /* Recursively adds each of the files in the current directory to a batch file as a compile command and creates a .lib. */

    char[] DirBase = getcwd ~ dirSep;
    char[] logFile = DirBase ~ "win32_log.txt";
    char[] resultFile = DirBase ~ "win32_dmd.txt";
    char[] bufCompile;
    char[] relPath;
    char[] fullPath;
    char[] compileOptions;
    char[] ln;
    char[] lp;
    char[] dstressDir;
    char[] lastDir;
    int pos;
    File f;
    TryToCompileEnum shouldItCompile;


    bufCompile ~= "ECHO dstress results ... > " ~ resultFile ~ \r\n;
    bufCompile ~= "ECHO dstress log ... > " ~ logFile ~ \r\n;

    Search search = new Search(".", "*.d", RECLS_FLAG.RECLS_F_RECURSIVE);
    foreach(Entry entry; search)
    {        
        with(entry)
        { 

            pos = find(DirectoryPath(), pathSep);
            fullPath = DirectoryPath[pos+1 .. DirectoryPath().length];

            /* Get path relative path */
            relPath = replace(DirectoryPath(), DirBase, "");

            lp = toLinuxPath(relPath ~ File());
	    /* strip of the ending */
	    if(std.string.ifind(lp, ".d")){
		    lp=lp[0 .. lp.length-2];
	    }else if(std.string.ifind(lp, ".html")){
		    lp=lp[0 .. lp.length-5];
	    }else if(std.string.ifind(lp, ".htm")){
		    lp=lp[0 .. lp.length-4];
	    }

            pos = find(relPath, dirSep);
            if(pos == -1) pos = dstressDir.length;
            dstressDir = tolower(relPath[0..pos]);

            f = new std.stream.File(DirectoryPath() ~  entry.File());

            /+debug+/ printf("%.*s\n", DirectoryPath() ~  entry.File());

            compileOptions = "";
            pos = -1;
            while(!f.eof && pos == -1) 
              /* stop at the end of the file or the first flag */
            {
                ln = f.readLine();

                /* 
                    look for special compile options 
                    (such as with run/constructor)
                */

                pos = find(ln, dstressFlag);
                if(pos != -1)
                {
                    /* Set compile options */
                    compileOptions = toHostPath(ln[pos + dstressFlag.length .. ln.length]);
                    debug printf("Compile Option(s) Found:" ~ compileOptions ~ "(" ~ DirectoryPath() ~  entry.File() ~ ")\n");
                }

            }
            f.close();

            shouldItCompile = TryToCompileEnum.dontKnow;
            switch(dstressDir)
            {
                case "":
                    shouldItCompile = TryToCompileEnum.dontTry;
                    break;

                case "addon":
                    shouldItCompile = TryToCompileEnum.dontTry;
                    break;

                case "benchmark":
                    shouldItCompile = TryToCompileEnum.dontTry;
                    break;

                case "compile":
                    shouldItCompile = TryToCompileEnum.shouldCompile;
                    break;

                case "complex":
                    shouldItCompile = TryToCompileEnum.dontTry;
                    break;

                case "nocompile":
                    shouldItCompile = TryToCompileEnum.shouldntCompile;
                    break;

                case "norun":
                    shouldItCompile = TryToCompileEnum.shouldntRun;
                    break;

                case "obj":
                    shouldItCompile = TryToCompileEnum.dontTry;
                    break;

                case "raw-results":
                    shouldItCompile = TryToCompileEnum.dontTry;
                    break;

                case "run":
                    shouldItCompile = TryToCompileEnum.shouldRun;
                    break;

                case "www":
                    shouldItCompile = TryToCompileEnum.dontTry;
                    break;

                default:
                    printf("Unexpected directory: '%.*s'\n", dstressDir);
                    break;
            }

            if((shouldItCompile != TryToCompileEnum.dontTry) && (relPath <> lastDir))
            { 
                lastDir = relPath;
                bufCompile ~= "CD " ~ fullPath ~ \r\n;                
            }

            switch(shouldItCompile){
                case TryToCompileEnum.shouldCompile:
                {

                    debug printf("Should compile\n");

                    bufCompile ~= "ECHO Attempting to compile " ~ lp ~ "... >> " ~ logFile ~ \r\n;
                    bufCompile ~= "dmd -c " ~ File() ~ " " ~ compileOptions ~ " >> " ~ logFile ~ \r\n;

                    bufCompile ~= "IF ERRORLEVEL 1 (ECHO FAIL: " ~ lp ~ " >> " ~ resultFile ~ ") " ~
                      "ELSE (ECHO PASS:  " ~ lp ~ " >> " ~ resultFile ~ ")" ~ \r\n;
                    bufCompile ~= "ECHO. >>" ~ logFile ~ \r\n;
                    break;
               }
               case TryToCompileEnum.shouldntCompile:
               {
                    debug printf("Shouldn't compile\n");

                    bufCompile ~= "ECHO Attempting to compile " ~ lp ~ "... >> " ~ logFile ~ \r\n;
                    bufCompile ~= "dmd -c " ~ File() ~ " " ~ compileOptions ~ " >> " ~ logFile ~ \r\n;

                    bufCompile ~= "IF ERRORLEVEL 1 (ECHO XFAIL:  " ~ lp ~ " >> " ~ resultFile ~ ") " ~
                      "ELSE (ECHO XPASS: " ~ lp ~ " >> " ~ resultFile ~ ")" ~ \r\n;
                    bufCompile ~= "ECHO. >>" ~ logFile ~ \r\n;
                    break;
               }
               case TryToCompileEnum.shouldntRun:
               case TryToCompileEnum.shouldRun:
               {
                    bufCompile ~= "ECHO Todo " ~ lp ~ "... >> " ~ logFile ~ lineSep;
                    break;
               }
               case TryToCompileEnum.dontTry:
               case TryToCompileEnum.dontKnow:
               {
                    bufCompile ~= "ECHO Skipping " ~ lp ~ "... >> " ~ logFile ~ \r\n;
		    break;
               } 
               default:
	       {
                    bufCompile ~= "ECHO Script BUG " ~ lp ~ "... >> " ~ logFile ~ lineSep;
               }
            } 
        }
    }

    /* The following code doesn't work right, but the batch file is empty if I take it out. */
    if(bufCompile == "") printf("Is the buffer there? '%.*s'\n", bufCompile);

    debug printf("Buffer: '%.*s'\n", bufCompile);

    File fOut = new File();
    with(fOut)
    {   
        create(getcwd ~ "\\" ~ testFile);
        writeString(bufCompile ~ "pause\r\nerase *.obj\r\n");
        close();    
    }
}



char[] toLinuxPath(char[] s)
{
   /* Switch the backslash (\) for Windows with
      Linux directory separator (/) */

    return replace(s, "\\", "/");
}



char[] toHostPath(char[] s)
{
   /* Switch the Linux directory separator (/) 
      with backslash (\) for Windows           */

    return replace(s, "/", dirSep);
}



unittest /* requires importation of std.recls and std.file */
{    
    /* Test the current directory from std.recls against std.file's getcwd. */
    
    Search  searchBase  =   new Search(".", ".", RECLS_FLAG.RECLS_F_DIRECTORIES);
    foreach(Entry entry; searchBase)
    {
        /* I'm only expecting one entry, but I don't know a way to access it without a foreach. */
        assert(entry.DirectoryPath() == getcwd ~ "\\");    
    }
    assert(getcwd != "");
    printf("Unittests successful.\n");    
}

