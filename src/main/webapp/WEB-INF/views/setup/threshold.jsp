<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<div class="container ">
	<h1>설정 <small>임계치 설정</small></h1>
	
	<ul class="nav nav-pills nav-stacked">
	  <li class="active"><a href="#">SERVER</a></li>
	</ul>
    <div class="filter-panel">
        <div class="panel panel-default">
            <div class="panel-body">
                <form role="form">
                	<div class="row">
               			<!-- ########################## 검색 폼 시작 ########################## -->
               			<div class="row">
               				<div class="form-group col-md-2 text-center">
	                			<label class="filter-col">분류</label>
	                		</div>
               				<div class="form-group col-md-2 text-center">
	                			<label class="filter-col">정상</label>
	                		</div>
               				<div class="form-group col-md-2 text-center">
	                			<label class="filter-col">경고</label>
	                		</div>
               				<div class="form-group col-md-2 text-center">
	                			<label class="filter-col">장애</label>
	                		</div>
               			</div>
               			<div class="row">
               				<div class="form-group col-md-2 text-center">
	                			<label class="filter-col">CPU</label>
	                		</div>
               				<div class="form-group col-md-2 text-center">
	                			<input type="text" class="form-control input-sm">
	                		</div>
               				<div class="form-group col-md-2 text-center">
	                			<input type="text" class="form-control input-sm">
	                		</div>
               				<div class="form-group col-md-2 text-center">
	                			<input type="text" class="form-control input-sm">
	                		</div>
               			</div>
               			<div class="row">
               				<div class="form-group col-md-2 text-center">
	                			<label class="filter-col">Memory</label>
	                		</div>
               				<div class="form-group col-md-2 text-center">
	                			<input type="text" class="form-control input-sm">
	                		</div>
               				<div class="form-group col-md-2 text-center">
	                			<input type="text" class="form-control input-sm">
	                		</div>
               				<div class="form-group col-md-2 text-center">
	                			<input type="text" class="form-control input-sm">
	                		</div>
               			</div>
               			<div class="row">
               				<div class="form-group col-md-2 text-center">
	                			<label class="filter-col">HDD</label>
	                		</div>
               				<div class="form-group col-md-2 text-center">
	                			<input type="text" class="form-control input-sm">
	                		</div>
               				<div class="form-group col-md-2 text-center">
	                			<input type="text" class="form-control input-sm">
	                		</div>
               				<div class="form-group col-md-2 text-center">
	                			<input type="text" class="form-control input-sm">
	                		</div>
               			</div>
               			<div class="row">
               				<div class="form-group col-md-2 text-center">
	                			<label class="filter-col">Network</label>
	                		</div>
               				<div class="form-group col-md-2 text-center">
	                			<input type="text" class="form-control input-sm">
	                		</div>
               				<div class="form-group col-md-2 text-center">
	                			<input type="text" class="form-control input-sm">
	                		</div>
               				<div class="form-group col-md-2 text-center">
	                			<input type="text" class="form-control input-sm">
	                		</div>
               			</div>
               			<div class="row">
               				<div class="form-group col-md-2 text-center">
	                			<label class="filter-col">Session</label>
	                		</div>
               				<div class="form-group col-md-2 text-center">
	                			<input type="text" class="form-control input-sm">
	                		</div>
               				<div class="form-group col-md-2 text-center">
	                			<input type="text" class="form-control input-sm">
	                		</div>
               				<div class="form-group col-md-2 text-center">
	                			<input type="text" class="form-control input-sm">
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
<br/>
	<ul class="nav nav-pills nav-stacked">
	  <li class="active"><a href="#">VM</a></li>
	</ul>
    <div class="filter-panel">
        <div class="panel panel-default">
            <div class="panel-body">
                <form role="form">
                	<div class="row">
               			<!-- ########################## 검색 폼 시작 ########################## -->
               			<div class="row">
               				<div class="form-group col-md-2 text-center">
	                			<label class="filter-col">분류</label>
	                		</div>
               				<div class="form-group col-md-2 text-center">
	                			<label class="filter-col">정상</label>
	                		</div>
               				<div class="form-group col-md-2 text-center">
	                			<label class="filter-col">경고</label>
	                		</div>
               				<div class="form-group col-md-2 text-center">
	                			<label class="filter-col">장애</label>
	                		</div>
               			</div>
               			<div class="row">
               				<div class="form-group col-md-2 text-center">
	                			<label class="filter-col">CPU</label>
	                		</div>
               				<div class="form-group col-md-2 text-center">
	                			<input type="text" class="form-control input-sm">
	                		</div>
               				<div class="form-group col-md-2 text-center">
	                			<input type="text" class="form-control input-sm">
	                		</div>
               				<div class="form-group col-md-2 text-center">
	                			<input type="text" class="form-control input-sm">
	                		</div>
               			</div>
               			<div class="row">
               				<div class="form-group col-md-2 text-center">
	                			<label class="filter-col">HDD</label>
	                		</div>
               				<div class="form-group col-md-2 text-center">
	                			<input type="text" class="form-control input-sm">
	                		</div>
               				<div class="form-group col-md-2 text-center">
	                			<input type="text" class="form-control input-sm">
	                		</div>
               				<div class="form-group col-md-2 text-center">
	                			<input type="text" class="form-control input-sm">
	                		</div>
               			</div>
               			<div class="row">
               				<div class="form-group col-md-2 text-center">
	                			<label class="filter-col">Network</label>
	                		</div>
               				<div class="form-group col-md-2 text-center">
	                			<input type="text" class="form-control input-sm">
	                		</div>
               				<div class="form-group col-md-2 text-center">
	                			<input type="text" class="form-control input-sm">
	                		</div>
               				<div class="form-group col-md-2 text-center">
	                			<input type="text" class="form-control input-sm">
	                		</div>
               			</div>
               			<div class="row">
               				<div class="form-group col-md-2 text-center">
	                			<label class="filter-col">Session</label>
	                		</div>
               				<div class="form-group col-md-2 text-center">
	                			<input type="text" class="form-control input-sm">
	                		</div>
               				<div class="form-group col-md-2 text-center">
	                			<input type="text" class="form-control input-sm">
	                		</div>
               				<div class="form-group col-md-2 text-center">
	                			<input type="text" class="form-control input-sm">
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