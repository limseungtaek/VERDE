<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<link rel='stylesheet' href='${pageContext.request.contextPath }/resources/Nwagon.css' type='text/css'>
<script src='${pageContext.request.contextPath }/resources/Nwagon.js'></script>
<link href="${pageContext.request.contextPath }/resources/css/datepicker/bootstrap-datepicker.min.css?ver=0.01" rel="stylesheet">
<script src="${pageContext.request.contextPath }/resources/js/datepicker/bootstrap-datepicker.min.js?ver=0.01"></script>
<script type="text/javascript">
$(function() {
	
  $(".input-daterange" ).datepicker({
	  language: "kr",	//언어 - kr:한국어, en:영어
	  format:"yyyy-mm-dd"
  });
  
  $("#oneDatePick").datepicker({
	  language:"kr",
	  format:"yyyy-mm-dd"
  });
});
</script>
<div class="container ">
	<h1>Session <small>접속추이</small></h1>
	<div class="text-center" id="chart71"></div>
	<script>
	var options = {
			'legend': {
	            names: ['7-25','7-26','7-27','7-28','7-29','7-30'],
	            hrefs: []
	        },
	        'dataset': {
	            title: 'Playing time per day',
	            values: [5,7,1,4,6,3],
	            colorset: ['#56b4e9'],
	            fields:['접속수']
	        },
	        'chartDiv': 'chart71',
	        'chartType': 'column',
	        'chartSize': { width: 1024, height: 300 },
	        'maxValue': 10,
	        'increment': 1
		};

		Nwagon.chart(options);
	</script>
	
    <div class="filter-panel">
        <div class="panel panel-default">
            <div class="panel-body">
                <form role="form">
                	<div class="row">
               			<!-- ########################## 검색 폼 시작 ########################## -->
               			<div class="row">
               				<div class="form-group col-md-1 col-md-offset-1">
	                			<label class="filter-col" for="startDateRange">일시</label>
	                		</div>
	                		<div class="form-group form-inline input-daterange col-md-7" id="datepicker">
							    <input data-provice="datepicker" type="text" readonly="readonly" class="input-sm form-control" id="startDateRange" name="startDateRange" />
							    ~
							    <input data-provice="datepicker" type="text" readonly="readonly" class="input-sm form-control" id="endDateRange" name="endDateRange" />
	                		</div>
               			</div>
               			<div class="row">
               				<div class="form-group col-md-1 col-md-offset-1">
	                			<label class="filter-col" for="pref-perpage">사용량</label>
	                		</div>
               				<div class="form-group form-inline col-md-4">
								<select id="pref-perpage" class="form-control">
		                        	<option value="0">0</option>
		                            <option value="10">10</option>
		                            <option value="20">20</option>
		                            <option value="30">30</option>
		                            <option value="40">40</option>
		                            <option value="50">50</option>
		                            <option value="60">60</option>
		                            <option value="70">70</option>
		                            <option value="80">80</option>
		                            <option value="90">90</option>
		                            <option value="100">100</option>
		                        </select> 
		                        ~
		                        <select id="pref-perpage" class="form-control">
		                        	<option value="0">0</option>
		                            <option value="10">10</option>
		                            <option value="20">20</option>
		                            <option value="30">30</option>
		                            <option value="40">40</option>
		                            <option value="50">50</option>
		                            <option value="60">60</option>
		                            <option value="70">70</option>
		                            <option value="80">80</option>
		                            <option value="90">90</option>
		                            <option value="100">100</option>
		                        </select>                                
		                    </div>
               				<div class="form-group col-md-1 col-md-offset-1">
	                			<label class="filter-col" for="pref-ip">아이피</label>
	                		</div>
	                		<div class="form-group form-inline col-md-2">
	                			<input type="text" class="form-control input-sm" id="pref-ip">
	                		</div>
               			</div>
               			<div class="row">
               				<div class="form-group col-md-1 col-md-offset-1">
	                			<label class="filter-col" for="pref-radio1">통계유형</label>
	                		</div>
               				<div class="form-group col-md-4">
								<label class="checkbox-inline">
									<input type="radio" name="radio" id="pref-radio0" /> 없음
								</label>
								<label class="checkbox-inline">
									<input type="radio" name="radio" id="pref-radio1" /> 5분
								</label>
								<label class="checkbox-inline">
									<input type="radio" name="radio" id="pref-radio2" /> 시간
								</label>
								<label class="checkbox-inline">
									<input type="radio" name="radio" id="pref-radio3" /> 일
								</label>
								<label class="checkbox-inline">
									<input type="radio" name="radio" id="pref-radio4" /> 월
								</label>
		                    </div>
               				<div class="form-group col-md-1 col-md-offset-1">
	                			<label class="filter-col" for="pref-session">세션</label>
	                		</div>
	                		<div class="form-group col-md-2">
								<select id="pref-session" class="form-control">
		                        	<option value="0">0</option>
		                            <option value="10">10</option>
		                            <option value="20">20</option>
		                            <option value="30">30</option>
		                            <option value="40">40</option>
		                            <option value="50">50</option>
		                            <option value="60">60</option>
		                            <option value="70">70</option>
		                            <option value="80">80</option>
		                            <option value="90">90</option>
		                            <option value="100">100</option>
		                        </select> 
	                		</div>
               				<div class="form-group col-md-1">
	                			<button type="submit" class="btn btn-default filter-col">
	                                <span class="glyphicon glyphicon-search"></span> 검색
	                            </button>  
	                		</div>
               			</div>
               			<!-- ########################## 검색 폼 끝    ########################## -->
                	</div>
                </form>
            </div>
        </div>
    </div>
	
	<table class="table">
    <thead>
      <tr>
        <th>통계일자</th>
        <th>동시접속자수 (평균)</th>
        <th>아이피</th>
      </tr>
    </thead>
    <tbody>
      <tr class="info">
        <td>2015-06-12 01:12:35</td>
        <td>5</td>
        <td>192.168.1.3</td>
      </tr>
      <tr class="info">
        <td>2015-06-12 01:12:35</td>
        <td>7</td>
        <td>192.168.1.3</td>
      </tr>
      <tr class="info">
        <td>2015-06-12 01:12:35</td>
        <td>1</td>
        <td>192.168.1.3</td>
      </tr>
      <tr class="info">
        <td>2015-06-12 01:12:35</td>
        <td>4</td>
        <td>192.168.1.3</td>
      </tr>
    </tbody>
  </table>
  <p class="text-right"><button type="button" class="btn btn-primary btn-sm">Excel Download</button></p>
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