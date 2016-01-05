package test1234;


	import java.io.BufferedReader;
	import java.io.File;
	import java.io.FileReader;
	import java.io.IOException;
	 
	public class test {
	public static void main(String[] args) throws IOException{
	    System.out.println("test");
	int num = 0;
	File file = new File("C:\\test.txt");
	if(file.exists())
	{
	    BufferedReader inFile = new BufferedReader(new FileReader(file));
	/*    BufferedReader inFile = new BufferedReader(new InputStreamReader(new FileInputStream(file),"UTF-8"));*/
	    //BuffredReader 클래스를 사용하여 읽을 파일을 선언하여 줍니다.
	   //file부분에 해당 파일 경로및이름을 적어주시면됩니다.*^^*
	     
	    String sLine = null;
	    //읽어 들인 데이터를 저장할 변수를 	선언해줍니다. (readLine 메소드의 경우 String형을 반환하기 때문에 이에 맞게 선언!)
	  
	    while( (sLine = inFile.readLine()) != null )
	   //선언한 파일을 readLine() 메소드를 통해 한 줄씩 가져와 sLine변수에 저장합니다.
	    {
	   //	System.out.println(sLine);
	        /*if(sLine.matches(".*question.*")){
	               System.out.println(sLine); //읽어들인 문자열을 출력 합니다.
	        }*/
	        if(sLine.matches(".*question.*")){
	               System.out.println(sLine); //읽어들인 문자열을 출력 합니다.
	        }
	 
	 
	    }
	}
	}
	}

