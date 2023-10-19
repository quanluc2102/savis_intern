<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fo" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html >
<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="style.css" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN"
            crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
    <title>Login</title>
    <style>
        .logo{
            width: 100%;
        }
        .nav-search{
            margin: 1rem 0;
        }
        .link-text{
            text-decoration: none;
            color: #00575C;
        }
        .link-text:hover{
            text-decoration: underline;
        }
        #help{
            float: right;
            margin: 1rem 0;
        }
        .main{
            background-image: url('/images/banner/banner_log.png');
            background-repeat: no-repeat;
            background-size: 100%;
        }
        .form{
            margin: 3rem 0 1rem 0;
            padding: 3rem;
            height: 400px;
            background-color: white;
        }
        .btn{
            color: white !important;
            background-color: #00575C !important;
        }
        .btn:hover{
            background-color: #FFB800 !important;
        }
        .login{
            height: 46px;
            font-size: 16px;
            font-weight: 500;
            line-height: 19px;
            letter-spacing: 0em;
            border-radius: 30px !important;
        }
        .text-log{
            margin: 1rem 0 1rem 0;
            font-size: 16px;
            font-weight: 500;
            line-height: 19px;
            letter-spacing: 0em;
            text-align: left;

        }
        .text-log>span{
            font-weight: 400;
            color: #7A7A7A;
        }
    </style>
</head>

<body>
<div class="container">
    <nav class="nav-search">
        <div class="row">
            <div class="col-md-2 col-4">
                <a href="/home/index.html"><img src="../images/logo.png" class="logo" alt="logo" />
                </a>
            </div>
            <div class="col-md-10 col-8">
                <a href="#" class="link-text" id="help">Need Help?</a>
            </div>
        </div>
    </nav>
</div>
<div id="nav-bottom"></div>
<div class="main">
    <div class="container">
        <div class="row">
            <div class="col-6"></div>
            <div class="col-5">
                <div class="form">
                    <h3>Log in</h3>
                    <div class="text-log">
                        <a href="/signup/index.html" class="link-text">Sign up</a>
                    </div>
                    <form action="/loginOK" method="post">
                        <div class="mb-3">
                            <label for="exampleInputUsername" class="form-label">Username</label>
                            <input class="form-control" id="exampleInputUsername" name="username" />
                        </div>
                        <div class="mb-3">
                            <label for="exampleInputPassword" class="form-label">Password</label>
                            <input type="password" class="form-control" id="exampleInputPassword" name="password"/>
                        </div>
                        <c:if test="${erTrong != null}" >
                            <p style="color: red">${erTrong}</p>
                        </c:if>
                        <c:if test="${erCheck != null}" >
                            <p style="color: red">${erCheck}</p>
                        </c:if>
                        <c:if test="${erCheckRole != null}" >
                            <p style="color: red">${erCheckRole}</p>
                        </c:if>
                        <div class="d-grid">
                            <button type="submit" class="btn login">LOG IN</button>
                        </div>

                    </form>
                </div>
            </div>
            <div class="col-1"></div>
        </div>
    </div>
    <br />
</div>
</body>

</html>