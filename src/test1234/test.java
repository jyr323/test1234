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
	    //BuffredReader Ŭ������ ����Ͽ� ���� ������ �����Ͽ� �ݴϴ�.
	   //file�κп� �ش� ���� ��ι��̸��� �����ֽø�˴ϴ�.*^^*
	     
	    String sLine = null;
	    //�о� ���� �����͸� ������ ������ 	�������ݴϴ�. (readLine �޼ҵ��� ��� String���� ��ȯ�ϱ� ������ �̿� �°� ����!)
	  
	    while( (sLine = inFile.readLine()) != null )
	   //������ ������ readLine() �޼ҵ带 ���� �� �پ� ������ sLine������ �����մϴ�.
	    {
	   //	System.out.println(sLine);
	        /*if(sLine.matches(".*question.*")){
	               System.out.println(sLine); //�о���� ���ڿ��� ��� �մϴ�.
	        }*/
	        if(sLine.matches(".*question.*")){
	               System.out.println(sLine); //�о���� ���ڿ��� ��� �մϴ�.
	        }
	 
	 
	    }
	}
	}
	}

