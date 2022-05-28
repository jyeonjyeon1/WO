<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<tr id="">
  	<td>
      <label class="checkbox-inline">
        <input type="checkbox" name="sb_seqs" value="">&nbsp;
      </label>
    </td>
    <td> </td>
    <td id="sb_keyword">
    	<input type="text" id="search____text" class="form-control" placeholder="검색어" value=""></td>
    <td id="sb_url">
    	<input type="text" id="search____url" class="form-control" placeholder="/storeList.user?search=" value=""></td>
    <td>
      <button type="button" id="change_btn" onclick="changeKeyword()" class="btn btn-primary btn-xs">
      	<i id="change_icon" class="fa fa-pencil"></i>
      </button>
      <button type="button" onclick="deleteOne()" class="btn btn-danger btn-xs">
      	<i class="fa fa-trash-o "></i>
      </button>
    </td>
</tr>
<script>

</script>
  <script src="https://cdn.jsdelivr.net/npm/simple-datatables@3.2.0/dist/umd/simple-datatables.js"></script>
  <script src="resources/assets/js/admin/datatable/datatables-simple-demo.js"></script>