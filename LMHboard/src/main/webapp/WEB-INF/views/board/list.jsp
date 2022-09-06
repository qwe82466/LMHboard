<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- header 복붙 -->
<%@ include file="../includes/header.jsp" %>  
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>




  <!-- Page Heading -->
                    <h1 class="h3 mb-2 text-gray-800">Tables</h1>
                    <p class="mb-4">DataTables is a third party plugin that is used to generate the demo table below.
                        For more information about DataTables, please visit the <a target="_blank"
                            href="https://datatables.net">official DataTables documentation</a>.</p>

                    <!-- DataTales Example -->
                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <h6 class="m-0 font-weight-bold text-primary">DataTables Example</h6>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                    <thead>
                                        <tr>
                                            <th>글번호</th>
                                            <th>글제목</th>
                                            <th>작성자</th>
                                            <th>작성시간</th>
                                          
                                        </tr>
                                    </thead>
                                    <tfoot>
                                        <tr>
                                            <th>글번호</th>
                                            <th>글제목</th>
                                            <th>작성자</th>
                                            <th>작성시간</th>
                                           
                                        </tr>
                                    </tfoot>
                                    <tbody>
  
                                        	<c:forEach var="list" items="${list}">
											<tr>	
												<td>${list.bno}</td>								
												<td>${list.title}</td>								
																				
												<td>${list.writer}</td>								
												<td><fmt:formatDate pattern="YY-MM-dd HH:mm" value="${list.reg}"/> </td>								
											                                        	
											</tr>                                        	
                                        	</c:forEach>
                                        
                                        
                                 
                                       
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>














            
   	<!-- footer 복붙 -->        
	<%@ include file="../includes/footer.jsp" %>