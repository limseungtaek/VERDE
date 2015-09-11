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
	<h1>Memory <small>VM</small></h1>
	<div class="text-center" id="chart71"></div>
	<script>
		var options = {
			'legend':{
				names: ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', '20', '21', '22', '23']
					},
			'dataset':{
				title:'Playing time per day', 
				values: [[56,76,50], [58,66,50], [60,62,50], [58,70,50], [85, 76,50], [86,83,50], [82, 73,50], [77,66,50], [87,66,50], [49,56,50], [58,76,50], [85, 76,50], [56,83,50], [56, 83,50], [45, 34,50], [82, 73,50], [77,66,50], [87,66,50], [49,56,50], [58,76,50], [85, 76,50], [56,83,50], [56, 83,50], [45, 34,50]],
				colorset: ['#0072b2', '#cc79a7', '#2EB400'],
				fields:['VM 01', 'VM 02', 'VM 03']
			},
			'chartDiv' : 'chart71',
			'chartType' : 'line',
			'leftOffsetValue': 40,
			'bottomOffsetValue': 60,
			'chartSize' : {width:1024, height:300},
			'minValue' :0,
			'maxValue' : 100,
			'increment' : 10
		};

		Nwagon.chart(options);
	</script>
	
    <div class="filter-panel">
        <div class="panel panel-default">
            <div class="panel-body">
                <form class="form-group form-inline" role="form">
                	<div class="row">
               			<!-- ########################## 검색 폼 시작 ########################## -->
               			<div class="row">
               				<div class="form-group col-md-1 col-md-offset-1">
	                			<label class="filter-col" for="startDateRange">일시</label>
	                		</div>
	                		<div class="form-group input-daterange col-md-7" id="datepicker">
							    <input data-provice="datepicker" type="text" readonly="readonly" class="input-sm form-control" id="startDateRange" name="startDateRange" />
							    ~
							    <input data-provice="datepicker" type="text" readonly="readonly" class="input-sm form-control" id="endDateRange" name="endDateRange" />
	                		</div>
               			</div>
               			<div class="row">
               				<div class="form-group col-md-1 col-md-offset-1">
	                			<label class="filter-col" for="pref-perpage">사용량</label>
	                		</div>
               				<div class="form-group col-md-4">
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
	                		<div class="form-group col-md-4">
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
        <th>사용량 (%)</th>
        <th>아이피</th>
      </tr>
    </thead>
    <tbody>
      <tr class="success">
        <td><a data-toggle="modal" data-target="#myModal" href="#">2015-06-12 01:12:35</a></td>
        <td>20 %</td>
        <td>192.168.1.3</td>
      </tr>
      <tr class="danger">
        <td>2015-06-12 01:12:35</td>
        <td>20 %</td>
        <td>192.168.1.3</td>
      </tr>
      <tr class="info">
        <td>2015-06-12 01:12:35</td>
        <td>20 %</td>
        <td>192.168.1.3</td>
      </tr>
      <tr class="info">
        <td>2015-06-12 01:12:35</td>
        <td>20 %</td>
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


<!-- Modal -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">MEMORY 상세 목록</h4>
      </div>
      <div class="modal-body">
      <!-- ########################### modal contents start ######################## -->
      <iframe width="99.6%" height="520" src="${pageContext.request.contextPath }/modal/contents?data=mem&view=vm" frameborder="0" style="-ms-zoom: 1.0;"></iframe>
      <!-- ########################### modal contents end ######################## -->
      </div>
      <div class="modal-footer">
      	<button type="button" class="btn btn-primary">Excel Download</button>
        <button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
      </div>
    </div>
  </div>
</div>