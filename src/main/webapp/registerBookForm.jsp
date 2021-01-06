<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Register book form</title>
    <link rel="stylesheet" type="text/css" href="css/format.css" />
</head>
<body>

    <form id="myForm" action="registerBook.jsp">
        <fieldset>
            <legend>Register book form</legend>
            <p>
                <label for="isbn">ISBN :</label>
                <input type="text" id="isbn" name="isbn"/>
            </p>
            <p>
                <label for="tittle">Tittle: </label>
                <input type="text" id="tittle" name= "tittle"/>
            </p>
            <p>
                <label for="category">Category: </label>
                <input type="text" id="category" name="category"/>

            </p>
            <p>
                <input type="submit" value="accept"/>
            </p>
        </fieldset>
    </form>

<script type="text/javascript" src="js/bookForm.js"></script>
</body>
</html>
