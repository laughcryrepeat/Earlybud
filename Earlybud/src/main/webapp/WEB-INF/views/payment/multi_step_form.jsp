<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Admin Page - Item list</title>
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

<title> Earlybud · Multi step form</title>
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
                <label>User name</label>
                <input type="text" class="form-control" id="username">
              </div>
            </div>
            <div class="col-12 col-md-6 col-lg-6">
              <div class="form-group">
                <label>E-mail</label>
                <input type="text" class="form-control" id="email">
              </div>
            </div>
          </div>
          <div class="row">
            <div class="col-12 col-md-6 col-lg-6">
              <div class="form-group">
                <label>Password</label>
                <input type="password" class="form-control" id="pwd">
              </div>
            </div>
            <div class="col-12 col-md-6 col-lg-6">
              <div class="form-group">
                <label>Confirm password</label>
                <input type="password" class="form-control" id="pwd_check">
              </div>
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
                <input type="text" class="form-control" id="full_name">
              </div>
            </div>
            <div class="col-12 col-lg-6">
             <div class="form-group">
                <label>Phone number</label>
                <input type="text" class="form-control" id="phone">
             </div>
            </div>
          </div>
          
          <div class="row">
            <div class="col-12 col-lg-6">
              <div class="row">
                <div class="col-12 col-md-6 col-lg-6">
                  <div class="form-group">
                    <label>Zip code</label>
                    <input type="text" class="form-control" id="zip_code">
                  </div>
                </div>
                <div class="col-12 col-md-6 col-lg-6">
                  <div class="form-group">
                    <label>State</label>
                    <input type="text" class="form-control" id="state">
                  </div>
                </div>
              </div>
            </div>
            <div class="col-12 col-lg-6">
              <div class="form-group">
                <label>Home address</label>
                <input type="text" class="form-control" id="address">
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
                <input type="text" class="form-control" id="cardnum">
              </div>
            </div>
            <div class="col-12 col-md-4 col-lg-5">
              <div class="form-group">
                <label>CVC</label>
                <input type="text" class="form-control" id="cvc">
              </div>
            </div>
          </div>
          <div class="row">
            <div class="col-12 col-lg-7">
              <div class="form-group">
                <label>Card holder name</label>
                <input type="text" class="form-control" id="cardholder">
              </div>
            </div>
            <div class="col-12 col-lg-5">
              <div class="row">
                <div class="col-12 col-md-4 col-lg-6">
                  <div class="form-group">
                    <label>Expiry month</label>
                    <input type="text" class="form-control" id="exp_month">
                  </div>
                </div>
                <div class="col-12 col-md-4 col-lg-6">
                  <div class="form-group">
                    <label>Expiry year</label>
                    <input type="text" class="form-control" id="exp_year">
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
              <button type="button" class="btn btn-success ml-auto" data-form-step="#confirmation">
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
                  <div class="mb-2">john_doe</div>
                </div>
              </div>
              <div class="row">
                <div class="col-12 col-md-3 col-lg-2">
                  <label class="text-secondary">Email ID</label>
                </div>
                <div class="col-12 col-md-9 col-lg-10">
                  <div class="mb-2">john_doe@email.com</div>
                </div>
              </div>
              <div class="row">
                <div class="col-12 col-md-3 col-lg-2">
                  <label class="text-secondary">받는 사람</label>
                </div>
                <div class="col-12 col-md-9 col-lg-10">
                  <div class="mb-2">John Doe</div>
                </div>
              </div>
              <div class="row">
                <div class="col-12 col-md-3 col-lg-2">
                  <label class="text-secondary">폰번호</label>
                </div>
                <div class="col-12 col-md-9 col-lg-10">
                  <div class="mb-2">01000000000</div>
                </div>
              </div>
              <div class="row">
                <div class="col-12 col-md-3 col-lg-2">
                  <label class="text-secondary">주소</label>
                </div>
                <div class="col-12 col-md-9 col-lg-10">
                  <div class="mb-2">111 W.App Ave. Suite 123, Sunway, CA</div>
                </div>
              </div>
              <div class="row">
                <div class="col-12 col-md-3 col-lg-2">
                  <label class="text-secondary">우편번호</label>
                </div>
                <div class="col-12 col-md-9 col-lg-10">
                  <div class="mb-2">94086</div>
                </div>
              </div>
              <div class="row">
                <div class="col-12 col-md-3 col-lg-2">
                  <label class="text-secondary">지역</label>
                </div>
                <div class="col-12 col-md-9 col-lg-10">
                  <div class="mb-2">CA</div>
                </div>
              </div>
              <div class="row">
                <div class="col-12 col-md-3 col-lg-2">
                  <label class="text-secondary">Card number</label>
                </div>
                <div class="col-12 col-md-9 col-lg-10">
                  <div class="mb-2">**** 2086</div>
                </div>
              </div>
              <div class="row">
                <div class="col-12 col-md-3 col-lg-2">
                  <label class="text-secondary">Card Expiry</label>
                </div>
                <div class="col-12 col-md-9 col-lg-10">
                  <div class="mb-2">12/20</div>
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
              <button type="submit" class="btn btn-success btn-block">
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
    var payment = {
    }
    
    </script>
  </body>
</html>