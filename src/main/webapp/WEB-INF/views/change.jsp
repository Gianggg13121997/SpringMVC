<%@ taglib prefix="th" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: Windows
  Date: 11/22/2024
  Time: 2:56 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

</head>
<body>
<h1>CHUYEN DOI TIEN TE</h1>
<form th:action="@{/change/change}" th:object="${money}" method="post">
    <label for="vnd">Amount in VND:</label>
    <input type="number" id="vnd" th:th:field="*{vnd}" step="1000" required />
    <button type="submit">Convert</button>
</form>

<div th:if="${money.usd != null}">
    <h2>Converted Amount: <span th:text="${money.usd}"></span> USD</h2>
</div>
</form>
</body>
</html>
