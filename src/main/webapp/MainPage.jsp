<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="templates/header_footer.jsp" %>

<div class="container w-75 vh-100 my-5 jumbotron d-flex">
    <div class="mb-auto mt-auto w-100 p-5 shadow-sm rounded bg-white">
        <div class="text-end w-100 mb-3">
            <h5>Hello, <span class="text-success fs-4">${username}!</span></h5>
            <h6 class="text-danger">Points: ${points}</h6>
        </div>

        <div>
            <h3 class="text-light p-1 bg-dark rounded">To succeed in the interview, you must attempt all the questions.
                ;)</h3>
        </div>

        <form action="main" method="post">
            <div class="questions">
                <c:forEach var="question" items="${question}" varStatus="loop">
                    <div class="my-5 container p-3 shadow-sm rounded" id="${question.id}">
                        <p class="text-muted"><b>${loop.count}. ${question.question} <span class="text-danger">*</span></b>
                        </p>
                        <div class="answers m-3 mb-0 d-flex flex-row align-items-center justify-content-between w-75 mx-auto">

                            <div><input type="radio" name="${question.id}" value="${question.optA}" required>
                                <label>${question.optA}</label></div>

                            <div><input type="radio" name="${question.id}" value="${question.optB}" required>
                                <label>${question.optB}</label></div>

                            <div><input type="radio" name="${question.id}" value="${question.optC}" required>
                                <label>${question.optC}</label></div>


                        </div>

                        <c:if test="${points > 0}">
                            <p class="pt-2">Answer is : <i class="text-success">${question.correctAnswer}</i></p>
                        </c:if>
                    </div>

                </c:forEach>

            </div>
            <button class="btn btn-dark float-end" type="submit">Submit</button>
        </form>
    </div>
</div>
</body>
</html>
