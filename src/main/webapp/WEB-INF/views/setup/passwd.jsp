<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<div class="container ">
	<h1>설정 <small>비밀번호 변경</small></h1>
	
    <div class="filter-panel">
        <div class="panel panel-default">
            <div class="panel-body">
                <form role="form">
                	<div class="row">
               			<!-- ########################## 검색 폼 시작 ########################## -->
               			<div class="row">
               				<div class="form-group col-md-2 text-center">
	                			<label class="filter-col">현재비밀번호</label>
	                		</div>
               				<div class="form-group col-md-6">
	                			<input type="password" class="form-control input-sm">
	                		</div>
               			</div>
               			<div class="row">
               				<div class="form-group col-md-2 text-center">
	                			<label class="filter-col">새로운 비밀번호</label>
	                		</div>
               				<div class="form-group col-md-6">
	                			<input type="password" class="form-control input-sm">
	                		</div>
               			</div>
               			<div class="row">
               				<div class="form-group col-md-2 text-center">
	                			<label class="filter-col">비밀번호 재입력</label>
	                		</div>
               				<div class="form-group col-md-6">
	                			<input type="password" class="form-control input-sm">
	                		</div>
               				<div class="form-group col-md-2 text-center">
							  	<button type="submit" class="btn btn-default filter-col">
						            <span class="glyphicon glyphicon-save"></span> 저장
						        </button>  
	                		</div>
               			</div>
               			<!-- ########################## 검색 폼 끝    ########################## -->
                	</div>
                </form>
            </div>
        </div>
    </div>
    
</div>