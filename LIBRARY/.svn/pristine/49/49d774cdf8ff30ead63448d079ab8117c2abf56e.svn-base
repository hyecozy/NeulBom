<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="row">
	<div class="col-2"></div>
	<div class="col-6">
		<table class="table">
		  <thead>
		    <tr>
		      <th scope="col">No</th>
		      <th scope="col">회원 ID</th>
		      <th scope="col">성명</th>
		      <th scope="col">알림</th>
		    </tr>
		  </thead>
		  <tbody>
			  <c:forEach items="${memList }" var="mem" varStatus="status">
			    <tr>
			      <th scope="row">${status.index + 1 }</th>
			      <td>${mem.memId }</td>
			      <td>${mem.memName }</td>
			      <td><button type="button" class="open-msgModal btn btn-outline-primary btn-sm" data-bs-toggle="modal" data-bs-target="#messageModal" data-id="${mem.memId }">알림전송</button></td>
			    </tr>
			  </c:forEach>
		  </tbody>
		</table>
	</div>
</div>

<!-- Modal -->
<div class="modal fade" id="messageModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">New message</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <form>
          <div class="mb-3">
            <label for="recipient-name" class="col-form-label">회원 ID :</label>
            <input type="text" class="form-control" id="get-name" name="getId" readonly>
          </div>
          <div class="mb-3">
            <label for="message-text" class="col-form-label">내용 :</label>
            <textarea class="form-control" id="message-content" rows="7" name="msgContent" style="resize: none;" onkeyup="byteCheck(this, '500');"></textarea>
            <div style="text-align: right;"><span id="byteInfo">0</span> /500bytes</div>
          </div>
        </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>
        <button type="button" class="btn btn-primary">메세지 전송</button>
      </div>
    </div>
  </div>
</div>
<script type="text/javascript" src="/resources/js/admin/member_list.js"></script>
</body>
</html>