package controller;

import java.io.*;//FileInputStream
import java.util.*;//Map,Properties
import javax.servlet.*;
import javax.servlet.http.*;
//추가->다른 패키지의 클래스나 인터페이스를 참조
import action.CommandAction;

public class ControllerAction 
                       extends HttpServlet {
	
    //명령어와 명령어 처리클래스를 쌍으로 저장
    private Map commandMap = new HashMap();
    
	//서블릿을 실행시 서블릿의 초기화 작업->생성자
    public void init(ServletConfig config) 
                    throws ServletException {
    	
  //경로에 맞는 CommandPro.properties파일을 불러옴
    String props = config.getInitParameter("propertyConfig");
    System.out.println("불러온경로="+props);
    
  //명령어와 처리클래스의 매핑정보를 저장할
  //Properties객체 생성
    Properties pr = new Properties();
    FileInputStream f = null;//파일불러올때 
    
        try {
           //CommandPro.properties파일의 내용을 읽어옴
        	f=new FileInputStream(props);
           
        	//파일의 정보를 Properties에 저장
        	pr.load(f); //  웹 요청 명령어에 따라서 처리해주는 클래스명을 알기 위해서
        	
        }catch(IOException e){
          throw new ServletException(e);
        }finally{
        if(f!=null) try{f.close();}catch(IOException ex){}	
        }
        	
     //객체를 하나씩 꺼내서 그 객체명으로 Properties
     //객체에 저장된 객체를 접근
     Iterator keyiter = pr.keySet().iterator();
     
     while(keyiter.hasNext()){
       //요청한 명령어를 구하기위해
       String command = (String)keyiter.next();
       System.out.println("command="+command);
       //요청한 명령어(키)에 해당하는 클래스명을 구함
       String className=pr.getProperty(command);
       System.out.println("className="+className);
       
       try{
       //그 클래스의 객체를 얻어오기위해 메모리에 로드 
       Class commandClass = Class.forName(className); // action.ListAction
       System.out.println("commandClass="+commandClass);
       Object commandInstance = commandClass.newInstance(); //  객체 생성구문
       System.out.println
              ("commandInstance="+commandInstance);
      
       //Map객체 commandMap에 저장
       commandMap.put(command, commandInstance);
       System.out.println("commandMap="+commandMap);
       
            } catch (ClassNotFoundException e) {
                throw new ServletException(e);
            } catch (InstantiationException e) {
                throw new ServletException(e);
            } catch (IllegalAccessException e) {
                throw new ServletException(e);
            }
        }//while
    }

    public void doGet(//get방식의 서비스 메소드
                     HttpServletRequest request, 
                     HttpServletResponse response)
    throws ServletException, IOException {
    	    requestPro(request,response);
    }

    protected void doPost(//post방식의 서비스 메소드
                     HttpServletRequest request, 
                     HttpServletResponse response)
    throws ServletException, IOException {
    	    requestPro(request,response);
    }

    //시용자의 요청을 분석해서 해당 작업을 처리
    private void requestPro(HttpServletRequest request,
    		                HttpServletResponse response) 
    throws ServletException, IOException {
    		String view = null; //요청명령어에 따라서 이동할 페이지를 저장할 변수
    		// /list.do=action.ListAction객체 ( 인터페이스를 써서 자동형변환을 이용 )
    		CommandAction com = null; // 어떠한 자식클래스의 객체라도 부모형으로 자동형변환
    		//commandAction com = new ListAction(); // 만약 ListAction com = new ListAction() 을 했다면 자식마다 새로 적어줘야함
    		//commandAction com = new WriterFormAction(); // 인터페이스로 만들었다면 새로 만든 클래스라고해도 같은 자식이라 자동형변환가능
    		
    		
    		try {
    			//요청 명령어를 분석
    			String command = request.getRequestURI();
    			System.out.println("request.getURI=>"+request.getRequestURI());
    			System.out.println("request.getContextPath=>"+request.getContextPath());
    			if(command.indexOf(request.getContextPath())==0) {
    				command=command.substring(request.getContextPath().length());
    				 System.out.println("실제 command=>"+command); // list.do 
    			}
    			//요청명령어 -> /list.do -> action.ListAction객체
    			com=(CommandAction)commandMap.get(command); // <->put(객체)
    			System.out.println("command=>"+com); // action.ListAction@주소값 으로 나옴
    			
    			view=com.requestPro(request, response);
    			// 		/list.do로 들어온다면 list.jsp로 반환 왜 jsp로 반환되는걸까..  // 모르겠다.
    			// 		ListAction 클래스를 거쳐서 반환되네
    			
    			System.out.println("view=>"+view); // 	/list.jsp
    			
    		}catch(Throwable e) {
    			throw new ServletException(e); // e.printStackTrace();
    		}
    		//위에서 요청명령어에 해당하는 view로 이동(forward)
    		RequestDispatcher dispatcher = request.getRequestDispatcher(view);
    		dispatcher.forward(request, response);
    		
   	
    }
}

