<%@ page import="dev.cb.model.Personne" %>
<jsp:useBean id="personnes" type="java.util.ArrayList<dev.cb.model.Personne >" scope="request"/>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <%@include file="WEB-INF/assets/bootstrap.html" %>
</head>
<body>
<main>
    <div class="container">

        <table class="table">
            <thead>
            <tr>
                <th scope="col">#</th>
                <th scope="col">Nom</th>
                <th scope="col">Prénom</th>
                <th scope="col">Age</th>
            </tr>
            </thead>
            <tbody>
            <% int i = 0;
            for (Personne p : personnes) {
            %>
            <tr>
                <th scope="row"><%=++i%>
                </th>
                <td><%=p.getNom()%>
                </td>
                <td><%=p.getPrenom()%>
                </td>
                <td><%=p.getAge()%>
                </td>
            </tr>
            <% }%>
            </tbody>
        </table>
    </div>
</main>
</body>
</html>
