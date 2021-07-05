<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>Update Post Privacy</title>

    <link href="/css/lib/bootstrap.min.css" rel="stylesheet">
    <link href="/css/style.css" rel="stylesheet">
</head>

<body>

<div class="container">
    <div class="col-md-4">
        <jsp:include page="nav.jsp"></jsp:include>
    </div>
    <div class="col-md-6">
        <h5>Update Post Privacy</h5>
        <form action = "/updatePrivacy" method="post">
            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
            <input type="hidden" name="postId" value="${postId}">

            <div class="form-group">
                <label>Update Post Privacy</label>
                <textarea class="form-control" readonly>${post}</textarea>
            </div>

            <div class="form-group">
                <label for="postPrivacy">Post Privacy</label>
                <select class="form-control" name="postPrivacy" id="postPrivacy">
                    <option value="-1">----------</option>
                    <c:choose>
                        <c:when test="${privacy == 0}">
                            <option value="0" selected>Private</option>
                            <option value="1">Public</option>
                        </c:when>
                        <c:otherwise>
                            <option value="0">Private</option>
                            <option value="1" selected>Public</option>
                        </c:otherwise>
                    </c:choose>
                </select>
            </div>

            <input type="submit" value="Update Privacy" name="updatePrivacy" id="updatePrivacy">
        </form>
    </div>
</div>
</body>
</html>
<script type="text/javascript" src="/js/lib/jquery-3.4.1.min.js"></script>
<script type="text/javascript" src="/js/script.js"></script>
