<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>welcome to lucas book store</title>
</head>
<body background="F:\obs.jfif" >
<center>
   <form action="validatesearch.jsp" method="post">
       <label for="bname"style="color:white">TYPE BOOK NAME:</label><input required="required" type="text"name="bn"><br>
       <label for="genre" style="color:white">SELECT GENRE:</label>
       <input type="text"list="genre"name="gen">
       <datalist id="genre">
           <option value="fiction">fiction</option>
    <option value="romance">romance</option>
    <option value="action">action</option>
    <option value="novels">novels</option>
    <option value="biographies">biographies</option>
    <option value="comic">comic</option>
    <option value="drama">drama</option>
    <option value="fairytale">fairytale</option>
    <option value="fantasy">fantasy</option>
    <option value="scifiction">science fiction</option>
    <option value="mystery">mystery</option>
    <option value="poetry">poetry</option>
    <option value="thriller">thriller</option>
   </datalist><br>
   <label for="author" style="color:white">SELECT AUTHOR:</label>
   <input type="text" list="author"name="auth">
   <datalist id="author">
       <option value="khuswanth singh">KHUSHWANTH SINGH</option>
    <option value="ruskin bond">RUSKIN BOND</option>
    <option value="brinda">brinda</option>
    <option value="tagore">RAVINDRANATH TAGORE</option>
    <option value="arundhati roy">ARUNDHATI ROY</option>
    <option value="amulya">amulya</option>
    <option value="kiran desai">KIRAN DESAI</option>
    <option value="vikram seth">VIKRAM SETH</option>
    <option value="madhumitha">madhumitha</option>
    <option value="chenchu">chenchu</option>
    <option value="shashi tharoor">SHASHI THAROOR</option>
    <option value="swami vivekanandha">SWAMI VIVEKANANDHA</option>
    
   </datalist><br>
    
   
   <input type="submit"value="search">
   <br>  
   </form>
</center>
</body>
</html>