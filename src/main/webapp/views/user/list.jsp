<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head>
<title>Busca Usuários</title>
</head>
<body>
	<div>
		<h2>Listagem</h2>

		<form action="/user/findUsers.html" method="POST">
			<div>
				<input type="text" id="search" name="palavra">
			</div>
			<br />
			<div">
				<button id="id-button" type="submit">Busca</button>
			</div>
		</form>

		<c:if test="${not empty listUsers}">

			<table border="2">
				<tr>
					<th>Id</th>
					<th>Username</th>
					<th>Password</th>
					<th>Enabled</th>
					<th>Register Date</th>
					<th>Name</th>
					<th>Surname</th>
					<th>E-mail</th>
					<th>Phone</th>
				</tr>

				<c:forEach var="user" items="${listUsers}">
					<tr>
						<td>${user.id}</td>
						<td>${user.username}</td>
						<td>${user.password}</td>
						<td>${user.is_enabled}</td>
						<td><fmt:formatDate pattern="dd/MM/yyyy"
								value="${user.register_date}" /></td>
						<td>${user.name}</td>
						<td>${user.surname}</td>
						<td>${user.email}</td>
						<td>${user.phone}</td>
					<tr>
				</c:forEach>
			</table>
		</c:if>
		<c:if test="${empty listUsers}">
			<ul>
				<p>Nenhum resultado para busca!</p>
			</ul>
		</c:if>
		<br /> <input type="button" value="Voltar"
			onclick="window.location.href='/'" />
	</div>
</body>
</html>