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

        input[type=text], select {
            width: 100%;
            padding: 12px 20px;
            margin: 8px 0;
            display: inline-block;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }

        input[type=submit] {
            width: 100%;
            background-color: #4CAF50;
            color: white;
            padding: 14px 20px;
            margin: 8px 0;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        input[type=submit]:hover {
            background-color: #45a049;
        }

        div {
            border-radius: 5px;
            background-color: #f2f2f2;
            padding: 20px;
        }
    </style>
</head>

<body>
    <h1>Add Home</h1>
    <div class="container">
        <a href="./addhome.jsp">Add Home</a>
        <a href="./findhome.jsp">Find Home</a>
        <a href="./removehome.jsp">Remove Home</a>
    </div>

    <div class="container">
        <form action="/findHome">
            <label for="zipCode">Zip Code:</label>
            <input type="text" id="zipCode" name="zipCode">
            <br>
            <br>
            <input type="submit">
        </form>
    </div>
</body>

</html>