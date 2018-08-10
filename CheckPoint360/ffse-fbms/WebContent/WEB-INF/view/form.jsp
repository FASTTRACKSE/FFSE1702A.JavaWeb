<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:include page="/WEB-INF/view/templates/header.jsp" /> 

<div class="app-content content container-fluid">
<div class="content-wrapper">
 <!-- Forms Section-->
                           
                              <div class="container-fluid">
                                <div class="row">

                                  <!-- Inline Form-->
                                  <div class="col-lg-8">                           
                                    <div class="card">
                                      
                                      <div class="card-header d-flex align-items-center">
                                        <h3 class="h4">Thông tin nhân viên</h3>
                                      </div>
                                      <div class="card-body">
                                        <form class="form-inline">
                                          <div class="form-group">
                                            <label for="inlineFormInput" class="sr-only">Mã nhân viên</label>
                                            <input id="inlineFormInput" type="text" placeholder="Mã nhân viên" class="mr-3 form-control" disabled="">
                                          </div>
                                          <div class="form-group">
                                            <label for="inlineFormInputGroup" class="sr-only">Username</label>
                                            <input id="inlineFormInputGroup" type="text" placeholder="Tên nhân viên" class="mr-3 form-control" disabled="">
                                          </div>
                          <!-- <div class="form-group">
                          <label for="inlineFormInputGroup" class="sr-only">Phòng Ban</label>
                          <input id="inlineFormInputGroup" type="text" placeholder="Phòng/Ban" class="mr-3 form-control" disabled="">
                        </div> -->
                        <div class="form-group">
                          <button type="submit" class="btn btn-primary">Đổi nhân viên</button>
                        </div>
                      </form>
                    </div>
                  </div>
                </div>

                <!-- Form Elements -->
                <div class="col-lg-12">
                  
                    <div class="card-header d-flex align-items-center">
                      <h3 class="h4">Đánh giá nhân viên</h3>
                      <br/>
                    </div>
                          <label class="col-sm-4 form-control-label"><h3>Kỷ luật</h3></label><br/>
                    <form class="rating" >
                      <label>
                        <input type="radio" name="stars" value="1" />
                        <span class="icon">★</span>
                      </label>
                      <label>
                        <input type="radio" name="stars" value="2" />
                        <span class="icon">★</span>
                        <span class="icon">★</span>
                      </label>
                      <label>
                        <input type="radio" name="stars" value="3" />
                        <span class="icon">★</span>
                        <span class="icon">★</span>
                        <span class="icon">★</span>   
                      </label>
                      <label>
                        <input type="radio" name="stars" value="4" />
                        <span class="icon">★</span>
                        <span class="icon">★</span>
                        <span class="icon">★</span>
                        <span class="icon">★</span>
                      </label>
                      <label>
                        <input type="radio" name="stars" value="5" />
                        <span class="icon">★</span>
                        <span class="icon">★</span>
                        <span class="icon">★</span>
                        <span class="icon">★</span>
                        <span class="icon">★</span>
                      </label>

                    </form>
                     <input type="text" class="form-control" size="60" placeholder="mô tả đánh giá tinh thần">
                   <br/>
                    <div class="line"></div>
                    <label class="col-sm-4 form-control-label">Tinh thần</label>
                    <form class="rating">
                      <label>
                        <input type="radio" name="stars" value="1" />
                        <span class="icon">★</span>
                      </label>
                      <label>
                        <input type="radio" name="stars" value="2" />
                        <span class="icon">★</span>
                        <span class="icon">★</span>
                      </label>
                      <label>
                        <input type="radio" name="stars" value="3" />
                        <span class="icon">★</span>
                        <span class="icon">★</span>
                        <span class="icon">★</span>   
                      </label>
                      <label>
                        <input type="radio" name="stars" value="4" />
                        <span class="icon">★</span>
                        <span class="icon">★</span>
                        <span class="icon">★</span>
                        <span class="icon">★</span>
                      </label>
                      <label>
                        <input type="radio" name="stars" value="5" />
                        <span class="icon">★</span>
                        <span class="icon">★</span>
                        <span class="icon">★</span>
                        <span class="icon">★</span>
                        <span class="icon">★</span>
                      </label>
                    </form>
                    <input type="text" class="form-control" size="60" placeholder="mô tả đánh giá tinh thần">
                    <div class="line"></div>
                    <label class="col-sm-4 form-control-label">Khối lượng</label>
                    <form class="rating">
                      <label>
                        <input type="radio" name="stars" value="1" />
                        <span class="icon">★</span>
                      </label>
                      <label>
                        <input type="radio" name="stars" value="2" />
                        <span class="icon">★</span>
                        <span class="icon">★</span>
                      </label>
                      <label>
                        <input type="radio" name="stars" value="3" />
                        <span class="icon">★</span>
                        <span class="icon">★</span>
                        <span class="icon">★</span>   
                      </label>
                      <label>
                        <input type="radio" name="stars" value="4" />
                        <span class="icon">★</span>
                        <span class="icon">★</span>
                        <span class="icon">★</span>
                        <span class="icon">★</span>
                      </label>
                      <label>
                        <input type="radio" name="stars" value="5" />
                        <span class="icon">★</span>
                        <span class="icon">★</span>
                        <span class="icon">★</span>
                        <span class="icon">★</span>
                        <span class="icon">★</span>
                      </label>
                    </form>
                    <input type="text" class="form-control" size="60" placeholder="mô tả đánh giá khối lượng công việc hoàn thành">
                      <div class="line"></div>
                    <label class="col-sm-4 form-control-label">Kết quả</label>
                    <form class="rating">
                      <label>
                        <input type="radio" name="stars" value="1" />
                        <span class="icon">★</span>
                      </label>
                      <label>
                        <input type="radio" name="stars" value="2" />
                        <span class="icon">★</span>
                        <span class="icon">★</span>
                      </label>
                      <label>
                        <input type="radio" name="stars" value="3" />
                        <span class="icon">★</span>
                        <span class="icon">★</span>
                        <span class="icon">★</span>   
                      </label>
                      <label>
                        <input type="radio" name="stars" value="4" />
                        <span class="icon">★</span>
                        <span class="icon">★</span>
                        <span class="icon">★</span>
                        <span class="icon">★</span>
                      </label>
                      <label>
                        <input type="radio" name="stars" value="5" />
                        <span class="icon">★</span>
                        <span class="icon">★</span>
                        <span class="icon">★</span>
                        <span class="icon">★</span>
                        <span class="icon">★</span>
                      </label>
                    </form>

                    <input type="text" class="form-control" size="60" placeholder="mô tả đánh giá kết quả công việc">
                      <div class="line"></div>
                    <label class="col-sm-4 form-control-label">Kỹ năng</label>
                    <form class="rating">
                      <label>
                        <input type="radio" name="stars" value="1" />
                        <span class="icon">★</span>
                      </label>
                      <label>
                        <input type="radio" name="stars" value="2" />
                        <span class="icon">★</span>
                        <span class="icon">★</span>
                      </label>
                      <label>
                        <input type="radio" name="stars" value="3" />
                        <span class="icon">★</span>
                        <span class="icon">★</span>
                        <span class="icon">★</span>   
                      </label>
                      <label>
                        <input type="radio" name="stars" value="4" />
                        <span class="icon">★</span>
                        <span class="icon">★</span>
                        <span class="icon">★</span>
                        <span class="icon">★</span>
                      </label>
                      <label>
                        <input type="radio" name="stars" value="5" />
                        <span class="icon">★</span>
                        <span class="icon">★</span>
                        <span class="icon">★</span>
                        <span class="icon">★</span>
                        <span class="icon">★</span>
                      </label>
                    </form>
                    <input type="text" class="form-control" size="60" placeholder="mô tả đánh giá kỹ năng"> 
                   
                     <div class="line"></div>
                    <label class="col-sm-4 form-control-label">Đánh giá tổng thể</label>
                     <form class="rating">
                      <label>
                        <input type="radio" name="stars" value="1" />
                        <span class="icon">★</span>
                      </label>
                      <label>
                        <input type="radio" name="stars" value="2" />
                        <span class="icon">★</span>
                        <span class="icon">★</span>
                      </label>
                      <label>
                        <input type="radio" name="stars" value="3" />
                        <span class="icon">★</span>
                        <span class="icon">★</span>
                        <span class="icon">★</span>   
                      </label>
                      <label>
                        <input type="radio" name="stars" value="4" />
                        <span class="icon">★</span>
                        <span class="icon">★</span>
                        <span class="icon">★</span>
                        <span class="icon">★</span>
                      </label>
                      <label>
                        <input type="radio" name="stars" value="5" />
                        <span class="icon">★</span>
                        <span class="icon">★</span>
                        <span class="icon">★</span>
                        <span class="icon">★</span>
                        <span class="icon">★</span>
                      </label>
                    </form>
                    <input type="text" class="form-control" size="60" placeholder="mô tả đánh giá tổng thể"> 
                      <div class="line"></div>
                    <label class="col-sm-4 form-control-label">Định hướng</label>
                    
                    <input type="text" class="form-control" size="60" placeholder="mô tả định hướng"> 
                    <div class="card-body">
                      <form class="form-horizontal">
                        <div class="form-group row">

                          <div>
                          </div>



                        </div>

                        <div class="form-group row">
                          <div class="col-sm-4 offset-sm-3">
                            <button type="submit" class="btn btn-secondary">Cancel</button>
                            <button type="submit" class="btn btn-primary">Save changes</button>
                          </div>
                        </div>
                      </form>
                    </div>
                  </div>
                </div>
              </div>
            </div>
</div>
</div>
<jsp:include page="/WEB-INF/view/templates/footer.jsp" /> 