# Spring
스프링 게시판

1.web.xml 역할 

브라우저 요청 가장 먼저 처리하는 곳 
web.xml 

브라우저 요청 오면 먼저 Controller로 요청이 넘어가기 전에 DispatcherSevlet이 그 요청을 가로챔 
가로챈 요청은 -> servlet-context.xml 로 전달됨


web.xml 
웹 어플리케이션의 실행 환경에 관련된 각종 설정
정보가 담겨있는 파일 

<servlet-mapping>
요청 URL 패턴을 지정하는 부분 

<annotation-driven />
이 설정 통해 URL매핑이 일어남  이거 덕에 
@RequestMapping을 사용할 수 있게 됨 
여기에 지정된 URL로 브라우저 요청이 들어오면 
해당 URL찾아가서 메소드를 실행하게됨 

servlet-contxt는 브라우저	 요청으로부터 그 요청 
처리할 Controller 이어주는 작업을 함 
여기에서 HandlerMapping , HandlerAdapter작업진행

<context:component-scan base-package="com.myspring.ex" />
@Controller랑 @Respository @Service @Component
어노테이션이 사용된 클래스를 자동으로 등록하여
빈으로 등록함 
지정된 패키지 하위 항목으로 된 클래스에서 
이 애노테이션 사용된 클래스를 찾아서 빈으로 
등록해줌 

<div>
  <img src="https://i.imgur.com/3ZwJCKt.png" alt="">
</div>

<div>
  <img src="https://i.imgur.com/Nz9mejm.png" alt="">
</div>

<div>
  <img src="https://i.imgur.com/N80nduB.png" alt="">
</div>

<div>
  <img src="https://i.imgur.com/rsRUKSs.png" alt="">
</div>
