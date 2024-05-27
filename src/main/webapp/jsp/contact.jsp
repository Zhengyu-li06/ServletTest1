<%@ page contentType="text/html; charset=UTF-8" %>
<%@ include file="/header.html" %>
<h2>フォームの項目</h2>

<form action="<%= request.getContextPath() %>/servlet/contact" method="post">
<table>
  <tr>
    <th>項目</th>
    <th>必須かどうか</th>
    <th>フォームタイプ</th>
    <th>備考</th>
  </tr>
  <tr>
    <td>氏名</td>
    <td>必須</td>
    <td><input type="text" name="name" class="input-no-border1"></td>
    <td></td>
  </tr>
  <tr>
    <td>会社</td>
    <td></td>
    <td><input type="text" name="company" class="input-no-border1"></td>
    <td></td>
  </tr>
  <tr>
    <td>メールアドレス</td>
    <td>必須</td>
    <td><input type="text" name="email"  class="input-no-border1"></td>
    <td></td>
  </tr>
  <tr>
    <td>お問合せ内容</td>
    <td>必須</td>
    <td><input type="text" name="inquiry" class="input-no-border"></td>
    <td></td>
  </tr>
  <tr>
    <td>メルマガ種類</td>
    <td></td>
    <td></td>
    <td>
      <input type="checkbox" name="genre" value="総合案内"> 総合案内<br>
      <input type="checkbox" name="genre" value="セミナー案内"> セミナー案内<br>
      <input type="checkbox" name="genre" value="求人採用情報"> 求人採用情報
    </td>
  </tr>
 
</table>

<input type="submit" value="フォーム提出" class="submit-button">

</form>

<%@ include file="/footer.html" %>