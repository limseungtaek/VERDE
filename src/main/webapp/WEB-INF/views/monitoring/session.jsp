<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<div class="container ">
	<div class="row">
		<div class="pull-left">
			<button type="button" class="btn btn-fail" onclick="location.href='${pageContext.request.contextPath }/monitoring/server';">SERVER</button>
			<button type="button" class="btn btn-success" onclick="location.href='${pageContext.request.contextPath }/monitoring/session';">SESSION</button>
		</div>
		<div class="pull-right">
			<span class="label label-info">정상</span>
			<span class="label label-warning">경고</span>
			<span class="label label-danger">장애</span>
		</div>
	</div><br/>
	<div class="row">
		<div class="col-xs-4">ServerName01</div>
		<div class="col-xs-2">
		  <a href="#" class="thumbnail">CPU 5%</a>
		</div>
		<div class="col-xs-2">
		  <a href="#" class="thumbnail">Memory 5%</a>
		</div>
		<div class="col-xs-2">
		  <a href="#" class="thumbnail">HDD 70%</a>
		</div>
		<div class="col-xs-2">
		  <a href="#" class="thumbnail">Network 1%</a>
		</div>
	</div>
	<div class="row">
		<div class="col-xs-4">ServerName01</div>
		<div class="col-xs-2">
		  <a href="#" class="thumbnail">CPU 5%</a>
		</div>
		<div class="col-xs-2">
		  <a href="#" class="thumbnail">Memory 5%</a>
		</div>
		<div class="col-xs-2">
		  <a href="#" class="thumbnail">HDD 70%</a>
		</div>
		<div class="col-xs-2">
		  <a href="#" class="thumbnail">Network 1%</a>
		</div>
	</div>
	<div class="row">
		<div class="col-xs-4">ServerName01</div>
		<div class="col-xs-2">
		  <a href="#" class="thumbnail">CPU 5%</a>
		</div>
		<div class="col-xs-2">
		  <a href="#" class="thumbnail">Memory 5%</a>
		</div>
		<div class="col-xs-2">
		  <a href="#" class="thumbnail">HDD 70%</a>
		</div>
		<div class="col-xs-2">
		  <a href="#" class="thumbnail">Network 1%</a>
		</div>
	</div>
	<div class="row">
		<div class="col-xs-4">ServerName01</div>
		<div class="col-xs-2">
		  <a href="#" class="thumbnail">CPU 5%</a>
		</div>
		<div class="col-xs-2">
		  <a href="#" class="thumbnail">Memory 5%</a>
		</div>
		<div class="col-xs-2">
		  <a href="#" class="thumbnail">HDD 70%</a>
		</div>
		<div class="col-xs-2">
		  <a href="#" class="thumbnail">Network 1%</a>
		</div>
	</div>
	<div class="row">
		<div class="col-xs-4">ServerName01</div>
		<div class="col-xs-2">
		  <a href="#" class="thumbnail">CPU 5%</a>
		</div>
		<div class="col-xs-2">
		  <a href="#" class="thumbnail">Memory 5%</a>
		</div>
		<div class="col-xs-2">
		  <a href="#" class="thumbnail">HDD 70%</a>
		</div>
		<div class="col-xs-2">
		  <a href="#" class="thumbnail">Network 1%</a>
		</div>
	</div>
	
	<table class="table">
    <thead>
      <tr>
        <th>장애일시</th>
        <th>SESSION</th>
        <th>아이피</th>
        <th>구분</th>
        <th>분류</th>
      </tr>
    </thead>
    <tbody>
      <tr class="success">
        <td>2015-06-12 01:12:35</td>
        <td>Session 01</td>
        <td>192.168.2.150</td>
        <td>장애</td>
        <td>CPU</td>
      </tr>
      <tr class="danger">
        <td>2015-06-12 01:12:35</td>
        <td>Session 01</td>
        <td>192.168.2.150</td>
        <td>장애</td>
        <td>CPU</td>
      </tr>
      <tr class="info">
        <td>2015-06-12 01:12:35</td>
        <td>Session 01</td>
        <td>192.168.2.150</td>
        <td>장애</td>
        <td>CPU</td>
      </tr>
      <tr class="info">
        <td>2015-06-12 01:12:35</td>
        <td>Session 01</td>
        <td>192.168.2.150</td>
        <td>장애</td>
        <td>CPU</td>
      </tr>
    </tbody>
  </table>
  
  	<div class="text-center">
	<nav>
	  <ul class="pagination">
	    <li>
	      <a href="#" aria-label="Previous">
	        <span aria-hidden="true">&laquo;</span>
	      </a>
	    </li>
	    <li><a href="#">1</a></li>
	    <li><a href="#">2</a></li>
	    <li><a href="#">3</a></li>
	    <li><a href="#">4</a></li>
	    <li><a href="#">5</a></li>
	    <li><a href="#">6</a></li>
	    <li><a href="#">7</a></li>
	    <li><a href="#">8</a></li>
	    <li><a href="#">9</a></li>
	    <li><a href="#">10</a></li>
	    <li>
	      <a href="#" aria-label="Next">
	        <span aria-hidden="true">&raquo;</span>
	      </a>
	    </li>
	  </ul>
	</nav>
	</div>
</div>