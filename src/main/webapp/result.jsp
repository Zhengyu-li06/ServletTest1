<%@ page contentType="text/html; charset=UTF-8" %>
<%@ include file="/header2.html" %>
<h2>フォームの提出内容</h2>

<container class = con>
<p>氏名: <%= request.getAttribute("name") != null ?"<span style='color: rgb(128, 64, 64);'>" +  request.getAttribute("name") : "未入力" %></p>
<p>会社: <%= request.getAttribute("company") != null ? "<span style='color: rgb(128, 64, 64);'>" +  request.getAttribute("company") : "未入力" %></p>
<p>メールアドレス: <%= request.getAttribute("email") != null ?"<span style='color: rgb(128, 64, 64);'>" +   request.getAttribute("email") : "未入力" %></p>
<p>お問合せ内容: <%= request.getAttribute("inquiry") != null ?"<span style='color: rgb(128, 64, 64);'>" +   request.getAttribute("inquiry") : "未入力" %></p>

<p>メルマガ種類:</p>
<%
String[] genres = (String[]) request.getAttribute("genre");
if (genres != null) {
    for (String genre : genres) {
%>
<p class="genre"><%= genre %></p>
<%
    }
} else {
%>
<p class="genre">選択なし</p>
<%
}
%>

<form action="<%= request.getContextPath() %>/servlet/contact" method="post">
<table>
<tr>
    <td>資料請求希望</td>
    <td></td>
    <td></td>
    <td>
      <input type="radio" name="request" value="Yes"> Yes<br>
      <input type="radio" name="request" value="No"> No
    </td>
  </tr>
 </table>
 <input type="submit" value="フォーム提出" class="submit-button">
        

</container>
</form>

<%@ include file="/footer.html" %>