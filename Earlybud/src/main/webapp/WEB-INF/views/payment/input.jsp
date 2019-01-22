<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Payment</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="Create forms comprising or involving several steps or stages." />
    <!-- Font-icon css-->
    <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    
    <!-- style CSS for ITEM LIST //
		============================================ -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/payment/admin4b.min.css">
  </head>
  <body class="app sidebar-mini rtl">

<title>Earlybud · Multi step form</title>
<!-- @@close -->
<!-- @@block = body -->
<nav aria-label="breadcrumb">
  <ol class="breadcrumb">
    <li class="breadcrumb-item">결제정보 등록</li>
    <li class="breadcrumb-item active" aria-current="page">주문하기</li>
  </ol>
</nav>
<div class="container-fluid">
  
  <div class="callout callout-info">
    선택하신 상품 : <a href="#">XXX</a> / 1번 타입 / 금액 : 20000원 / 결제예정일 : 3월 3일 
  </div>
  <div class="nav-tabs-responsive">
    <ul class="nav nav-tabs-progress nav-tabs-4 mb-4">
      <li class="nav-item">
        <a href="#account" class="nav-link active" data-toggle="tab">
          <span class="font-lg">1.</span> 회원정보
          <small class="d-block text-secondary">
            얼리버드 회원 확인
          </small>
        </a>
      </li>
      <li class="nav-item">
        <a href="#personal" class="nav-link" data-toggle="tab">
          <span class="font-lg">2.</span> 배송지정보
          <small class="d-block text-secondary">
            받는사람 주소지
          </small>
        </a>
      </li>
      <li class="nav-item">
        <a href="#payment" class="nav-link" data-toggle="tab">
          <span class="font-lg">3.</span> 결제정보
          <small class="d-block text-secondary">
            카카오페이 or 카드결제
          </small>
        </a>
      </li>
      <li class="nav-item">
        <a href="#confirmation" class="nav-link" data-toggle="tab">
          <span class="font-lg">4.</span> 확인
          <small class="d-block text-secondary">
            Confirm your detail
          </small>
        </a>
      </li>
    </ul>
    <form id="formOrder" class="tab-content">
      <div id="account" class="tab-pane show active">
        <div class="mb-3">
          <a href="#account-collapse" data-toggle="collapse">
            <span class="font-lg">1.</span> 회원정보
            <small class="d-block text-secondary">
              Lorem ipsum dolor sit amet, venenatis adipiscing
            </small>
          </a>
        </div>
        <div id="account-collapse" class="collapse show" data-parent="#formOrder">
          <div class="text-secondary mb-3">
            <small>Step 1 of 4</small>
          </div>
          <div class="row">
            <div class="col-12 col-md-6 col-lg-6">
              <div class="form-group">
                <label>Nick name</label>
                <input type="text" class="form-control" id="nickname" name="nickname">
              </div>
            </div>
            <div class="col-12 col-md-6 col-lg-6">
              <div class="form-group">
                <label>E-mail</label>
                <input type="text" class="form-control" id="email" name="email">
              </div>
            </div>
          </div>
          <div class="row">
            <div class="col-12 col-md-6 col-lg-6">
              <div class="form-group">
                <label>Password</label>
                <input type="password" class="form-control" id="pwd" name="pwd">
              </div>         
            </div>
            <div class="col-12 col-md-6 col-lg-6">
                <br/>
              <span id="pwd_ok"></span>
            </div>
          </div>
          <div class="d-none d-md-block">
            <hr>
            <div class="d-flex mb-3">
              <button type="button" class="btn btn-success ml-auto" data-form-step="#personal">
                회원정보 확인 &nbsp;
                <i class="icon-arrow-right font-sm"></i>
              </button>
            </div>
          </div>
        </div>
      </div>
      <div id="personal" class="tab-pane">
        <div class="mb-3">
          <a href="#personal-collapse" data-toggle="collapse">
            <span class="font-lg">2.</span> 배송지 정보
            <small class="d-block text-secondary">
              받는사람 주소지
            </small>
          </a>
        </div>
        <div id="personal-collapse" class="collapse" data-parent="#formOrder">
          <div class="text-secondary mb-3">
            <small>Step 2 of 4</small>
          </div>
          <div class="row">
            <div class="col-12 col-lg-6">
              <div class="form-group">
                <label>Full name</label>
                <input type="text" class="form-control" id="del_name" name="del_name">
              </div>
            </div>
            <div class="col-12 col-lg-6">
             <div class="form-group">
                <label>Phone number</label>
                <input type="text" class="form-control" id="del_phone" name="del_phone">
             </div>
            </div>
          </div>
          
          <div class="row">
            <div class="col-12 col-lg-6">
              <div class="row">
                <div class="col-12 col-md-6 col-lg-6">
                  <div class="form-group">
                    <label>Zip code</label>
                    <input type="text" class="form-control" id="zip_code" name="zip_code" onClick="goPopup()">
                  </div>
                </div>
                <div class="col-12 col-md-6 col-lg-6">
                  <div class="form-group">
                    <label>City</label>
                    <input type="text" class="form-control" id="city" name="city">
                  </div>
                </div>
              </div>
            </div>
            <div class="col-12 col-lg-6">
              <div class="form-group">
                <label>Home address</label>
                <input type="text" class="form-control" id="address" name="address">
              </div>
            </div>
          </div>
          <div class="d-none d-md-block">
            <hr>
            <div class="d-flex mb-3">
              <button type="button" class="btn btn-outline-success" data-form-step="#account">
                <i class="icon-arrow-left font-sm"></i>
                &nbsp; 회원정보확인
              </button>
              <button type="button" class="btn btn-success ml-auto" data-form-step="#payment">
                결제정보 &nbsp;
                <i class="icon-arrow-right font-sm"></i>
              </button>
            </div>
          </div>
        </div>
      </div>
      <div id="payment" class="tab-pane">
        <div class="mb-3">
          <a href="#payment-collapse" data-toggle="collapse">
            <span class="font-lg">3.</span> 결제정보
            <small class="d-block text-secondary">
              Lorem ipsum dolor sit amet, venenatis adipiscing
            </small>
          </a>
        </div>
        <div id="payment-collapse" class="collapse" data-parent="#formOrder">
          <div class="text-secondary mb-3">
            <small>Step 3 of 4</small>
          </div>
          <div class="row">
            <div class="col-12 col-md-8 col-lg-7">
              <div class="form-group">
                <label>Card number</label>
                <input type="text" class="form-control" id="cardnum" name="cardnum">
              </div>
            </div>
            <div class="col-12 col-md-4 col-lg-5">
              <div class="form-group">
                <label>CVC</label>
                <input type="text" class="form-control" id="cardcvc" name="cardcvc">
              </div>
            </div>
          </div>
          <div class="row">
            <div class="col-12 col-lg-7">
              <div class="form-group">
                <label>Card type name</label>
                <input type="text" class="form-control" id="cardtype" name="card_type">
              </div>
            </div>
            <div class="col-12 col-lg-5">
              <div class="row">
                <div class="col-12 col-md-4 col-lg-6">
                  <div class="form-group">
                    <label>Expiry month</label>
                    <input type="text" class="form-control" id="exp_month" name="exp_month">
                  </div>
                </div>
                <div class="col-12 col-md-4 col-lg-6">
                  <div class="form-group">
                    <label>Expiry year</label>
                    <input type="text" class="form-control" id="exp_year" name="exp_year">
                  </div>
                </div>
                  
                <div class="col-12 col-md-4 col-lg-6">
                  <div class="form-group">
                    <label>Payment Type</label>
                    <select class="form-control" id="pur_type" name="pur_type">
                        <option value="" disabled selected></option>
                        <option value="kakao_pay">카카오페이</option>
                        <option value="inisis">이니시스</option>
                        <option value="inisis">페이코</option>
                    </select>
                  </div>
                </div> 
                  
              </div>
            </div>
          </div>
          <div class="d-none d-md-block">
            <hr>
            <div class="d-flex mb-3">
              <button type="button" class="btn btn-outline-success" data-form-step="#personal">
                <i class="icon-arrow-left font-sm"></i>
                &nbsp; 배송지정보
              </button>
              <button type="button" id="confirm_btn" class="btn btn-success ml-auto" data-form-step="#confirmation">
                확인 &nbsp;
                <i class="icon-arrow-right font-sm"></i>
              </button>
            </div>
          </div>
        </div>
      </div>
      <div id="confirmation" class="tab-pane">
        <div class="mb-3">
          <a href="#confirmation-collapse" data-toggle="collapse">
            <span class="font-lg">4.</span> Confirm your details
            <small class="d-block text-secondary">
              Lorem ipsum dolor sit amet, venenatis adipiscing
            </small>
          </a>
        </div>
        <div id="confirmation-collapse" class="collapse" data-parent="#formOrder">
          <div class="text-secondary mb-3">
            <small>Step 4 of 4</small>
          </div>
          <div class="card">
            <div class="card-body">
              <div class="row">
                <div class="col-12 col-md-3 col-lg-2">
                  <label class="text-secondary">이름</label>
                </div>
                <div class="col-12 col-md-9 col-lg-10">
                  <div id="confirm_username" class="mb-2"></div>
                </div>
              </div>
              <div class="row">
                <div class="col-12 col-md-3 col-lg-2">
                  <label class="text-secondary">Email ID</label>
                </div>
                <div class="col-12 col-md-9 col-lg-10">
                  <div id="confirm_email" class="mb-2"></div>
                </div>
              </div>
              <div class="row">
                <div class="col-12 col-md-3 col-lg-2">
                  <label class="text-secondary">받는 사람</label>
                </div>
                <div class="col-12 col-md-9 col-lg-10">
                  <div id="confirm_name" class="mb-2"></div>
                </div>
              </div>
              <div class="row">
                <div class="col-12 col-md-3 col-lg-2">
                  <label class="text-secondary">폰번호</label>
                </div>
                <div class="col-12 col-md-9 col-lg-10">
                  <div id="confirm_phone" class="mb-2"></div>
                </div>
              </div>
              <div class="row">
                <div class="col-12 col-md-3 col-lg-2">
                  <label class="text-secondary">주소</label>
                </div>
                <div class="col-12 col-md-9 col-lg-10">
                  <div id="confirm_address" class="mb-2"></div>
                </div>
              </div>
              <div class="row">
                <div class="col-12 col-md-3 col-lg-2">
                  <label class="text-secondary">우편번호</label>
                </div>
                <div class="col-12 col-md-9 col-lg-10">
                  <div id="confirm_zipcode" class="mb-2"></div>
                </div>
              </div>
              <div class="row">
                <div class="col-12 col-md-3 col-lg-2">
                  <label class="text-secondary">지역</label>
                </div>
                <div class="col-12 col-md-9 col-lg-10">
                  <div id="confirm_city" class="mb-2"></div>
                </div>
              </div>
              <div class="row">
                <div class="col-12 col-md-3 col-lg-2">
                  <label class="text-secondary">Card number</label>
                </div>
                <div class="col-12 col-md-9 col-lg-10">
                  <div id="confirm_cardnum" class="mb-2"></div>
                </div>
              </div>
              <div class="row">
                <div class="col-12 col-md-3 col-lg-2">
                  <label class="text-secondary">Card Type</label>
                </div>
                <div class="col-12 col-md-9 col-lg-10">
                  <div id="confirm_cardtype" class="mb-2"></div>
                </div>
              </div>
              <div class="row">
                <div class="col-12 col-md-3 col-lg-2">
                  <label class="text-secondary">Card Expiry</label>
                </div>
                <div class="col-12 col-md-9 col-lg-10">
                  <div id="confirm_expiry" class="mb-2"></div>
                </div>
              </div>
            </div>
          </div>
          <hr>
          <div class="d-block d-md-flex">
            <button type="button" class="btn btn-outline-success d-none d-md-inline mb-3" data-form-step="#payment">
              <i class="icon-arrow-left font-sm"></i>
              &nbsp; 결제정보
            </button>
            <div class="d-block d-md-inline ml-auto mb-3">
              <button id="submit_btn" type="submit" class="btn btn-success btn-block">
                주문하기
              </button>
            </div>
          </div>
        </div>
      </div>
    </form>
  </div>
</div>
<!-- @@close -->
<!-- Essential javascripts for application to work-->
    <script src="${pageContext.request.contextPath}/js/admin/jquery-3.2.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/admin/popper.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/admin/bootstrap.min.js"></script>
    <!-- Page specific javascripts-->
    <script src="${pageContext.request.contextPath}/js/payment/admin4b.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/payment/multi-step-form.js"></script>
    <script>
    function goPopup(){
         // 주소검색을 수행할 팝업 페이지를 호출합니다.
         // 호출된 페이지(jusopopup.jsp)에서 실제 주소검색URL(http://www.juso.go.kr/addrlink/addrLinkUrl.do)를 호출하게 됩니다.
         var pop = window.open("jusoPopup","pop","width=570,height=420, scrollbars=yes, resizable=yes"); 
         
         // 모바일 웹인 경우, 호출된 페이지(jusopopup.jsp)에서 실제 주소검색URL(http://www.juso.go.kr/addrlink/addrMobileLinkUrl.do)를 호출하게 됩니다.
         //var pop = window.open("/payment/jusoPopup.jsp","pop","scrollbars=yes, resizable=yes"); 
      }
      function jusoCallBack(roadFullAddr,roadAddrPart1,addrDetail,roadAddrPart2,engAddr, jibunAddr, zipNo, admCd, rnMgtSn, bdMgtSn,detBdNmList,bdNm,bdKdcd,siNm,sggNm,emdNm,liNm,rn,udrtYn,buldMnnm,buldSlno,mtYn,lnbrMnnm,lnbrSlno,emdNo){
      // 팝업페이지에서 주소입력한 정보를 받아서, 현 페이지에 정보를 등록합니다. 
       document.form.zip_code.value = zipNo;//우편번호
       document.form.address.value = addrDetail; //상세주소
       document.form.city.value = roadAddrPart1;//도로명주소
      }
    </script>
  </body>
</html>