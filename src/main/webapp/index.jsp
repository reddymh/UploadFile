<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>File Upload Demo</title>
</head>
<body>
    <center>
        <form method="post" action="UploadFile" enctype="multipart/form-data">
            Select file to upload:
            <input type="file" name="uploadfile" />
            <br/><br/>
            <input type="submit" value="Upload" />
        </form>
    </center>
</body>
</html>