
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ユーザ情報入力</title>
<link rel="stylesheet" type="text/css" href="./css/earth.css"/>
</head>
<body>

<!-- ヘッダーを表示する -->
<div class="header">
<%@include file="header.jsp" %>
</div>
<div class="main">
<h1>ユーザー情報入力画面</h1>


<!-- 姓のエラーメッセージを表示する -->
<s:if test="familyNameErrorMessageList!=null && familyNameErrorMessageList.size()>0">
	<div class="error">
	<div class="error-message">
		<s:iterator value="familyNameErrorMessageList"><s:property /><br></s:iterator>
	</div>
	</div>
</s:if>


<!-- 名前のエラーメッセージを表示する -->
<s:if test="firstNameErrorMessageList!=null && firstNameErrorMessageList.size()>0">
	<div class="error">
	<div class="error-message">
	<s:iterator value="firstNameErrorMessageList"><s:property /><br></s:iterator>
</div>
</div>
</s:if>

<!-- 姓ふりがなのエラーメッセージを表示する -->
<s:if test="familyNameKanaErrorMessageList!=null && familyNameKanaErrorMessageList.size()>0">
	<div class="error">
	<div class="error-message">
	<s:iterator value="familyNameKanaErrorMessageList"><s:property /><br></s:iterator>
	</div>
	</div>
</s:if>

<!-- 名ふりがなのエラーメッセージを表示する -->
<s:if test="firstNameKanaErrorMessageList!=null && firstNameKanaErrorMessageList.size()>0">
	<div class="error">
	<div class="error-message">
	<s:iterator value="firstNameKanaErrorMessageList"><s:property /><br></s:iterator>
	</div>
	</div>
</s:if>

<!-- メールアドレスのエラーメッセージを表示する -->
<s:if test="emailErrorMessageList!=null && emailErrorMessageList.size()>0">
	<div class="error">
	<div class="error-message">
	<s:iterator value="emailErrorMessageList"><s:property /><br></s:iterator>
	</div>
	</div>
</s:if>

<!-- ユーザーIDのエラーメッセージを表示する -->
<s:if test="userIdErrorMessageList!=null && userIdErrorMessageList.size()>0">
	<div class="error">
	<div class="error-message">
	<s:iterator value="userIdErrorMessageList"><s:property /><br></s:iterator>
	</div>
	</div>
</s:if>

<!-- パスワードのエラーメッセージを表示する -->
<s:if test="passwordErrorMessageList!=null && passwordErrorMessageList.size()>0">
	<div class="error">
	<div class="error-message">
	<s:iterator value="passwordErrorMessageList"><s:property /><br></s:iterator>
	</div>
	</div>
</s:if>

<!-- 既に存在しているユーザーのエラーメッセージを表示する -->
<s:if test="isExistsUserErrorMessage!=null && !isExistsUserErrorMessage.isEmpty()">
	<div class="error">
	<div class="error-message">
	<s:iterator value="isExistsUserErrorMessage"><s:property /><br></s:iterator>
	</div>
	</div>
</s:if>

<s:form action="CreateUserConfirmAction" >

<table class="vertical-list-table">
<tr>
	<th scope="row">姓</th>
	<td><s:textfield name="familyName" value="%{#session.familyName}" placeholder="姓" class="txt" /></td>
</tr>
<tr>
	<th scope="row">名</th>
	<td><s:textfield name="firstName" value="%{#session.firstName}" placeholder="名" class="txt" /></td>
</tr>
<tr>
	<th scope="row">姓ふりがな</th>
	<td><s:textfield name="familyNameKana" value="%{#session.familyNameKana}" placeholder="姓ふりがな" class="txt" /></td>
</tr>
<tr>
	<th scope="row">名ふりがな</th>
	<td><s:textfield name="firstNameKana" value="%{#session.firstNameKana}" placeholder="名ふりがな" class="txt" /></td>
</tr>


<tr>
	<th scope="row">性別</th>
	<td class="sex">
	<s:if test='#session.sex.equals("女性")'>
		<label><input type="radio" name="sex" list="" value="男性" placeholder="性別"/>男性</label>
		<label><input type="radio" name="sex" list="" value="女性" placeholder="性別" checked="checked"/>女性</label>
	</s:if>
	<s:else>
		<label><input type="radio" name="sex" list="" value="男性" placeholder="性別" checked="checked"/>男性</label>
		<label><input type="radio" name="sex" list="" value="女性" placeholder="性別"/>女性</label>
	</s:else>
	</td>
</tr>



<tr>
	<th scope="row">メールアドレス</th>
	<td><s:textfield name="email" value="%{#session.email}" placeholder="メールアドレス" class="txt"/></td>
</tr>
<tr>
	<th scope="row">ユーザーID</th>
	<td><s:textfield name="userId" value="%{#session.userIdForCreateUser}" placeholder="ユーザーID" class="txt" /></td>
</tr>
<tr>
	<th scope="row">パスワード</th>
	<td><s:password name="password" value="" placeholder="パスワード" class="txt" /></td>
</tr>
</table>
<div class="submit_btn_box">
<s:submit value="確認" class="submit_btn" />
</div>
</s:form>
</div>
</body>

</html>