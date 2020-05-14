<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.InputMismatchException" %>
<%@ page import="java.util.Scanner" %>
<%@ page import="java.util.Stack" %>
<html>
<head>
    <link href='http://fonts.googleapis.com/css?family=Roboto:400' rel='stylesheet' type='text/css'>
<style>

    h3, input::-webkit-input-placeholder, button {
        font-family: 'roboto', sans-serif;
        -webkit-transition: all 0.3s ease-in-out;
        transition: all 0.3s ease-in-out;
    }

    h3 {
        height: 50px;
        width: 100%;
        font-size: 20px;
        background: #18aa8d;
        color: white;
        line-height: 80%;
        border-radius: 1px 1px 0 0;
        box-shadow: 0 2px 5px 1px rgba(0, 0, 0, 0.2);
    }

    form {
        box-sizing: border-box;
        width: 260px;
        margin: 10px auto 0;
        box-shadow: 2px 2px 5px 1px rgba(0, 0, 0, 0.2);
        padding-bottom: 40px;
        border-radius: 3px;
    }
    form h3 {
        box-sizing: border-box;
        padding: 20px;
    }

    input {
        margin: 40px 25px;
        width: 200px;
        display: block;
        border: none;
        padding: 10px 0;
        border-bottom: solid 1px #1abc9c;
        -webkit-transition: all 0.3s cubic-bezier(0.64, 0.09, 0.08, 1);
        transition: all 0.3s cubic-bezier(0.64, 0.09, 0.08, 1);
        background: -webkit-linear-gradient(top, rgba(255, 255, 255, 0) 96%, #1abc9c 4%);
        background: linear-gradient(to bottom, rgba(255, 255, 255, 0) 96%, #1abc9c 4%);
        background-position: -200px 0;
        background-size: 200px 100%;
        background-repeat: no-repeat;
        color: #0e6252;
    }
    input:focus, input:valid {
        box-shadow: none;
        outline: none;
        background-position: 0 0;
    }
    input:focus::-webkit-input-placeholder, input:valid::-webkit-input-placeholder {
        color: #1abc9c;
        font-size: 11px;
        -webkit-transform: translateY(-20px);
        transform: translateY(-20px);
        visibility: visible !important;
    }

    button {
        border: none;
        background: #1abc9c;
        cursor: pointer;
        border-radius: 3px;
        padding: 6px;
        width: 200px;
        color: white;
        margin-left: 25px;
        box-shadow: 0 3px 6px 0 rgba(0, 0, 0, 0.2);
    }
    button:hover {
        -webkit-transform: translateY(-3px);
        -ms-transform: translateY(-3px);
        transform: translateY(-3px);
        box-shadow: 0 6px 6px 0 rgba(0, 0, 0, 0.2);
    }
    body {background-color : #ededed; font-family : "Open Sans", sans-serif;}

    h1 {padding: 40px; text-align: center; font-size: 1.5em;}

    li a {text-decoration : none; color : #2d2f31;}


    nav {
        width : 300px;
        background: #d9d9d9;
        margin : 10px auto;
    }

    span {
        padding : 30px;
        background : #18aa8d;
        color : white;
        font-size : 1.2em;
        font-variant : small-caps;
        cursor : pointer;
        display: block;
    }

    span::after {
        float: right;
        right: 10%;
        content: "+";
    }

    .slide {
        clear:both;
        width:100%;
        height:0px;
        overflow: hidden;
        text-align: center;
        transition: height .4s ease;
    }

    .slide li {padding : 10px;}

    #touch {position: absolute; opacity: 0; height: 0px;}

    #touch:checked + .slide {height: 50px;}

</style>


    <title>TSP</title>
</head>

<body>



<nav>

    <label for="touch"><span>Travelling Salesman Problem</span></label>
    <input type="checkbox" id="touch">

    <ul class="slide">
        <li><a href="about.jsp">About</a></li>
    </ul>

</nav>
<form action="sample" method="post">
    <h3>Solver</h3>
    <input placeholder="Number of Cities" type="text" name="cities" required pattern="[0-9\s]+">
    <input placeholder="Matrix" type="text" name="matrix" required pattern="[0-9\s]+">

    <button>Submit</button>
</form>

</body>
</html>
