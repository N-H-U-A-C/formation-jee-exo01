
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <%@include file="WEB-INF/assets/bootstrap.html"%>
</head>
<body>
<main>
    <div class="container">
        <p class="d-inline-flex gap-1">
            <button class="btn btn-primary" type="button" data-bs-toggle="collapse" data-bs-target="#collapseExample"
                    aria-expanded="false" aria-controls="collapseExample">
                Cliquez-moi !
            </button>
        </p>
        <div class="collapse" id="collapseExample">
            <div class="card card-body">
                Bientôt la pause !
            </div>
        </div>
    </div>
</main>
</body>
</html>
