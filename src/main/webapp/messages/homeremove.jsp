<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home Application</title>
    <style>
        body {
            font-family: Arial, Helvetica, sans-serif;
            text-align: center;
        }
        a {
            background-color: #04AA6D;
            color: white;
            padding: 10px 10px 10px 10px;
            text-align: center;
            text-decoration: none;
        }
        a:hover {
            background-color: white;
            color: #04AA6D;
            border: 2px solid #04aa6d;
        }
    </style>
</head>
<body>
    <h1>Welcome to Home</h1>
    <a href="./services/addhome.jsp">Add Home</a>
    <a href="./services/findhome.jsp">Find Home</a>
    <a href="./services/removehome.jsp">Remove Home</a>
    <p>Home Details: <br> ${homeRemoved}</p>
</body>
</html>