/* destress's result generator
 * Copyright (C) 2004 Thomas Kuehne  dstress <a> kuehne.cn
 * 
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */
 
package cn.kuehne.dmd.dstress;

import java.io.FileInputStream;
import java.io.InputStreamReader;
import java.io.IOException;
import java.io.LineNumberReader;
import java.io.OutputStreamWriter;
import java.io.Reader;
import java.io.Writer;
import java.util.Enumeration;
import java.util.Hashtable;
import java.util.StringTokenizer;

/** HTML snipplet generator for <a href='http://dmd.kuehne.cn/dstress.html'>dstress</a> results 
 * @author Thomas Kuehne dstress&lt;a&gt;kuehne.cn
 * @version $Date$
 **/ 
public class GenReport{

	/** store all results of 1 test case */
	protected static class TestResult{
		
		/** unexpected fail */
		static final byte XFAIL=1;
		
		/** expected fail */
		static final byte FAIL=2;
		
		/** expected pass */
		static final byte PASS=3;

		/** unexpected pass */
		static final byte XPASS=4;

		/** the test's name */
		protected String name;
		
		/** test status by reader id*/
		protected byte[] status;

		/** 
		 * @param name name of the test 
		 * @param count total number of status values 
		 **/
		protected TestResult(String name, int count){
			this.name=name;
			status=new byte[count];
		}
	}

	/** stores the TestResults by name */	
	private Hashtable data;

	public GenReport(Reader[] in, Writer out) throws Throwable{
		data=new Hashtable();
		for(int index=0; index<in.length; index++){
			try{
				read(new LineNumberReader(in[index]),index,in.length);
			}catch(Throwable t){
				throw new Throwable("reader number: "+index,t);
			}
		}
		write(out);
	}

	/** interpretes input on a per Reader basis and updates the data
	 * @param liner raw input of dstress's <pre>make all</pre> output
	 * @param version the id of the input
	 * @param max total number of input readers
	 **/
	private void read(LineNumberReader liner, int version, int max) throws Throwable{
		for(String line=liner.readLine(); line!=null; line=liner.readLine()){
			try{
				// pare result status
				StringTokenizer nizer = new StringTokenizer(line," \n:",false);
				String token=nizer.nextToken();
				byte status=-9;
				if(token.equals("PASS")){
					status=TestResult.PASS;
				}else if(token.equals("FAIL")){
					status=TestResult.FAIL;
				}else if(token.equals("XFAIL")){
					status=TestResult.XFAIL;
				}else if(token.equals("XPASS")){
					status=TestResult.XPASS;
				}else{
					throw new IOException("Unknown token \""+token+"\"");
				}
				// pares test name
				String name=nizer.nextToken();
				name=name.substring(name.lastIndexOf('/')+1);
				name=name.replace('_',' ');
				// get
				TestResult test=(TestResult)data.get(name);
				if(test==null){
					// no test by this name found
					test=new TestResult(name,max);
				}
				test.status[version]=status;
				// save 
				data.put(name,test);
			}catch(Throwable t){
				throw new Throwable("linenumber: "+liner.getLineNumber(),t);
			}
		}
	}

	/** saves unsorted results as a html snipplet */	
	private void write(Writer out) throws Exception{
		for(Enumeration e=data.elements();e.hasMoreElements();){
			TestResult result= (TestResult) e.nextElement();
			out.write("<tr><th>"+result.name+"</th>");
			for(int index=0; index<result.status.length; index++){
				out.write("<td class='");
				switch(result.status[index]){
					case TestResult.PASS:{
						out.write("A'>pass");
						break;
					}case TestResult.XPASS:{
						out.write("B'>xpass");
						break;
					}case TestResult.FAIL:{
						out.write("C'>fail");
						break;
					}case TestResult.XFAIL:{
						out.write("D'>xfail");
						break;
					}default:{
						throw new Exception("unhandled status "+result.status[index]+" for entry \""+result.name+"\" in input stream "+index);
					}
				}
				out.write("</td>");
			}
			out.write("</tr>\n");
		}
	}

	/** evaluate given files
	 * @param arg the values "--help", "-help", "-?", and "?" are interpreted as help requests
	 **/
	public static void main(String[] arg) throws Throwable{
		// check for help request
		if(requiresHelp(arg)){
			try{
				System.err.println(HELP);
				System.err.flush();
			}catch(Exception e){}
			System.exit(-1);
		}

		Throwable exception=null;
		Reader[] in=null;
		Writer out=null;
		try{
			// setup
			in=new Reader[arg.length];
			for(int index=0; index<in.length; index++){
				in[index]=new InputStreamReader(new FileInputStream(arg[index]));
			}
			out=new OutputStreamWriter(System.out);
			new GenReport(in,out);
		}catch(Throwable t){
			// save error
			exception=t;
		}finally{
			// close input
			for(int index=0; index<in.length; index++){
				try{in[index].close();}catch(Exception e){}
			}
			// close output
			try{out.flush();}catch(Exception e){}
			try{out.close();}catch(Exception e){}
		}

		// handle errors
		if(exception!=null){
			throw new Throwable(exception);
		}
	}	

	/** the help message */
	public static final String HELP="GenReport $Rev$ by Thomas Kuehne <dstress@kuehne.cn>\nINFO:\tgenerates snipplet HTML containing a result overview from dstress' output\nUSAGE:\tGenReport input [input2] [input3] [...] > output";
	
	/** check if the given argument indicates a help request */
	private static boolean requiresHelp(String[] arg){
		if(arg==null || arg.length<1){
			return true;
		}
		String[] help=new String[]{
			"--help",
			"-help",
			"-h",
			"-?",
			"?",
			"/h",
		};
		for(int argIndex=0; argIndex<arg.length; argIndex++){
			if(arg[argIndex]==null || arg[argIndex].length()<1){
				return true;
			}
			for(int helpIndex=0; helpIndex<help.length; helpIndex++){
				if(arg[argIndex].equals(help[helpIndex])){
					return true;
				}
			}
		}
		return false;
	}
}