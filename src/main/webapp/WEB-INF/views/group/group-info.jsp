<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

				
				<!-- content -->
				<div class="container">
				
					<div class="col-md-12 content-container">

						<ol class="breadcrumb">
							<li><a href="${pageContext.request.contextPath}/renual/index.jsp">홈</a></li>
							<li><a href="${pageContext.request.contextPath}/renual/data-repo.jsp">내 그룹</a></li>
							<li class="active">그룹 정보</li>
						</ol>
						
						<div class="col-sm-3 no-padding margin-bottom-10">

							<a href="#" class="thumbnail profile-thumbnail no-margin" data-toggle="tooltip" title="그룹정보 수정하기"> 
								<img id="profile-preview" src="${pageContext.request.contextPath}/resources/img/avatar.png" alt="...">
							</a>
							
							<div class="col-sm-12 no-padding">
								<span class="profile-nickname">DaviznDeveloper</span>
								<div>데이비즌 개발팀의 작업 공간</div>
								<br>
							</div>
							
							<div class="col-sm-12 no-padding">
								<span class="profile-font">
									<i class="fa fa-user-secret profile-font-icon" aria-hidden="true"></i>
									&nbsp;&nbsp;Davizn
								</span>
							</div>
							
							<div class="col-sm-12 no-padding">
								<span class="profile-font">
									<i class="fa fa-clock-o profile-font-icon" aria-hidden="true"></i>
									&nbsp;&nbsp;2016.06.16 에 창설.
								</span>
								<br><br>
							</div>
							
							<div class="col-sm-12 no-padding">
							
								<div class="col-sm-4 no-padding border-right">
													
									<div class="col-sm-12 center-block text-center margin-bottom-10" data-toggle="tooltip" title="그룹 멤버">
										<i class="fa fa-users vertical-middle group-main-icon-fonts" aria-hidden="true"></i>
									</div>
									
									<div class="col-sm-12 center-block text-center">
										5
									</div>
									
								</div>
								
								<div class="col-sm-4 no-padding border-right">
									
									<div class="col-sm-12 center-block text-center margin-bottom-10" data-toggle="tooltip" title="그룹 데이터">
										<i class="fa fa-files-o vertical-middle group-main-icon-fonts" aria-hidden="true"></i>
									</div>
									
									<div class="col-sm-12 center-block text-center">
										3
									</div>
									
								</div>
								
								<div class="col-sm-4 no-padding">
									
									<div class="col-xs-12 center-block text-center margin-bottom-10" data-toggle="tooltip" title="그룹 목표">
										<i class="fa fa-list-alt vertical-middle group-main-icon-fonts" aria-hidden="true"></i>
									</div>
									
									<div class="col-sm-12 center-block text-center">
										78
									</div>
									
								</div>
								
							</div>
					
						</div>
					
						<div class="col-sm-8 col-md-offset-1 no-padding">
	
							<div role="tabpanel">
					
								<!-- Nav tabs -->
								<ul class="nav nav-tabs" role="tablist">
									<li role="presentation" class="active">
										<a href="#groupMember" aria-controls="groupMember" role="tab" data-toggle="tab">그룹 인원</a>
									</li>
									<li role="presentation">
										<a href="#groupGorl" aria-controls="groupGorl" role="tab" data-toggle="tab">그룹 목표</a>
									</li>
									<li role="presentation">
										<a href="#groupData" aria-controls="groupData" role="tab" data-toggle="tab">그룹 데이터</a>
									</li>
									<li role="presentation">
										<a href="#groupDataHistory" aria-controls="groupDataHistory" role="tab" data-toggle="tab">그룹 데이터 히스토리</a>
									</li>
								</ul>
					
								<!-- Tab panes -->
								<div class="tab-content">
									<div role="tabpanel" class="tab-pane active" id="groupMember">
										<br>
										<div class="bs-example"
											data-example-id="panel-without-body-with-table">
											<div class="panel panel-info">
												<!-- Default panel contents -->
												<div class="panel-heading">
													<div class="checkbox no-margin">
															<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#group-join-application">이 그룹에 가입 신청</button>
															
															<!-- modal form -->
															<form action="" method="post" class="form-horizontal">
																<div id="group-join-application" class="modal fade">
																	<div class="modal-dialog modal-lg">
																		<div class="modal-content">
																		
																			<div class="modal-header">
																				<button type="button" class="close" data-dismiss="modal"
																					aria-label="Close">
																					<span aria-hidden="true">&times;</span>
																				</button>
																				<h4 class="modal-title">가입 신청</h4>
																			</div>
																			
																			<div class="modal-body">
																			
																				<h4 class="text-center">이 그룹에 가입 신청합니다.</h4>
																				
																				<br>
																				
																				<div class="row">
																					<label for="inputgroupIntroduce" class="col-sm-2 control-label">가입 신청 내용</label>
																					<div class="col-sm-10">
																						<textarea name="groupIntroduce" class="form-control textarea-size-fix" rows="3" id="inputgroupIntroduce"
																							placeholder="가입 신청에 대한 내용을 작성하세요" required></textarea>
																					</div>
																				</div>
																			</div>
																			<div class="modal-footer">
																				<button type="reset" class="btn btn-default" data-dismiss="modal">취소</button>
																				<button type="submit" class="btn btn-primary gorl-save">확인</button>
																			</div>
																			
																		</div>
																		<!-- /.modal-content -->
																	</div>
																	<!-- /.modal-dialog -->
																</div>
																<!-- /.modal -->
															</form>
															<!-- modal form -->
													</div>
												</div>

												<div class="group-info-member-table">
													<table class="table">
														<tbody>
															<tr>
																<th scope="row">1</th>
																<td>Davizn</td>
																<td class="text-center">그룹장</td>
																<td class="text-center">2016.06.19</td>
															</tr>
															<tr>
																<th scope="row">2</th>
																<td>seulki</td>
																<td class="text-center">그룹원</td>
																<td class="text-center">2016.06.19</td>
															</tr>
															<tr>
																<th scope="row">3</th>
																<td>nameLim</td>
																<td class="text-center">그룹원</td>
																<td class="text-center">2016.06.19</td>
															</tr>
															<tr>
																<th scope="row">4</th>
																<td>jungjin</td>
																<td class="text-center">그룹원</td>
																<td class="text-center">2016.06.19</td>
															</tr>
															<tr>
																<th scope="row">5</th>
																<td>wonsuk</td>
																<td class="text-center">그룹원</td>
																<td class="text-center">2016.06.19</td>
															</tr>
														</tbody>
													</table>
												</div>
											</div>
										</div>
									</div>
									
									<div role="tabpanel" class="tab-pane" id="groupGorl">

										<br>

										<div class="group-info-gorl-persent">전체 달성률</div>
										<div class="progress">
											<div class="progress-bar progress-bar-info" role="progressbar"
												aria-valuenow="20" aria-valuemin="0" aria-valuemax="100"
												style="width: 20%">20%
											</div>
										</div>
				
										<br>
										<div class="list-group">
											<a href="#" class="list-group-item">
												<span class="badge">7</span>
												<i class="fa fa-check-square-o profile-font-icon" aria-hidden="true"></i>
												&nbsp;&nbsp;내 데이터 관리
											</a>
											<a href="#" class="list-group-item">
												<span class="badge">38</span>
												<i class="fa fa-check-square-o profile-font-icon" aria-hidden="true"></i>
												&nbsp;&nbsp;내 그룹
											</a>
											<a href="#" class="list-group-item">
												<span class="badge">1</span>
												<i class="fa fa-check-square-o profile-font-icon" aria-hidden="true"></i>
												&nbsp;&nbsp;커뮤니티
											</a>
											<a href="#" class="list-group-item">
												<span class="badge">1</span>
												<i class="fa fa-check-square-o profile-font-icon" aria-hidden="true"></i>
												&nbsp;&nbsp;1:1 문의&건의
											</a>
											<a href="#" class="list-group-item">
												<span class="badge">3</span>
												<i class="fa fa-check-square-o profile-font-icon" aria-hidden="true"></i>
												&nbsp;&nbsp;알림
											</a>
											<a href="#" class="list-group-item">
												<span class="badge">3</span>
												<i class="fa fa-check-square-o profile-font-icon" aria-hidden="true"></i>
												&nbsp;&nbsp;쪽지 
											</a>
										</div>
									</div>
									
									<div role="tabpanel" class="tab-pane" id="groupData">
										<br>
										<div class="list-group">
											<a href="#" class="list-group-item">
												<span class="badge">7</span>
												<i class="fa fa-file-o profile-font-icon" aria-hidden="true"></i>
												&nbsp;&nbsp;kosta 112기 활동 내역
											</a>
											<a href="#" class="list-group-item">
												<span class="badge">4</span>
												<i class="fa fa-calendar profile-font-icon" aria-hidden="true"></i>
												&nbsp;&nbsp;java 일일 강의 내용
											</a>
											<a href="#" class="list-group-item">
												<span class="badge">6</span>
												<i class="fa fa-trophy profile-font-icon" aria-hidden="true"></i>
												&nbsp;&nbsp;web - client 일일 강의 내용
											</a>
											<a href="#" class="list-group-item">
												<span class="badge">0</span>
												<i class="fa fa-file-o profile-font-icon" aria-hidden="true"></i>
												&nbsp;&nbsp;Database
											</a>
											<a href="#" class="list-group-item">
												<span class="badge">0</span>
												<i class="fa fa-file-o profile-font-icon" aria-hidden="true"></i>
												&nbsp;&nbsp;Spring
											</a>
										</div>
									</div>
									
									<div role="tabpanel" class="tab-pane" id="groupDataHistory">
										<br>
										<div class="list-group">
											<a href="#" class="list-group-item">
												<span class="badge">7</span>
												<i class="fa fa-code-fork profile-font-icon" aria-hidden="true"></i>
												&nbsp;&nbsp;kosta 112기 활동 내역
											</a>
											<a href="#" class="list-group-item">
												<span class="badge">4</span>
												<i class="fa fa-code-fork profile-font-icon" aria-hidden="true"></i>
												&nbsp;&nbsp;java 일일 강의 내용
											</a>
											<a href="#" class="list-group-item">
												<span class="badge">6</span>
												<i class="fa fa-code-fork profile-font-icon" aria-hidden="true"></i>
												&nbsp;&nbsp;web - client 일일 강의 내용
											</a>
											<a href="#" class="list-group-item">
												<span class="badge">0</span>
												<i class="fa fa-code-fork profile-font-icon" aria-hidden="true"></i>
												&nbsp;&nbsp;Database
											</a>
											<a href="#" class="list-group-item">
												<span class="badge">0</span>
												<i class="fa fa-code-fork profile-font-icon" aria-hidden="true"></i>
												&nbsp;&nbsp;Spring
											</a>
										</div>
									</div>
									
								</div>
					
							</div>
					
						</div>
				
					</div>
				
				</div>
				
				<div id="push"></div>
				
			</div>
			
		</div>

<script src="${pageContext.request.contextPath}/resources/lib/ckeditor/ckeditor.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/data-note.js"></script>

