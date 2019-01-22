$("#pwd").keyup(function(){
    var str = formOrder.pwd.value;
    console.log(str);
    var request = $.ajax({
        url:"../payment/pwdCheck", 
        method:"GET", 
        data:{pwd:str}, 
        dataType:"html"});
	    request.done(function(data){
            $('#pwd_ok').css('color','blue');
            $("#pwd_ok").html(data);
	   });
});

$('[data-form-step]').on('click', function () {
  var tabId = $(this).attr('data-form-step');
  $('[href="' + tabId + '"]').tab('show');
});

$('#formOrder').on('submit', function(e) {
    var serializeArray = $(this).serializeArray();
    //alert(serializeArray);
    $('.nav-tabs-progress').find('.nav-item').last().addClass('complete');
    $.ajax({
        type: 'post',
        url: '../payment/reserve_payment', 
        data: serializeArrayeArray,
        success: function(){
            console.log("success");
        }
    });
  e.preventDefault();//기본이벤트 제거
});

var payment = {}
$(document).ready(function(){
    $('#confirm_btn').click(function(){
        payment.nickname = formOrder.nickname.value;
        payment.email = formOrder.email.value;
        payment.pwd = formOrder.pwd.value;
        payment.del_name = formOrder.del_name.value;
        payment.del_phone = formOrder.del_phone.value;
        payment.zip_code = formOrder.zip_code.value;
        payment.city = formOrder.city.value;
        payment.address = formOrder.address.value;
        payment.cardnum = formOrder.cardnum.value;
        payment.cardcvc = formOrder.cardcvc.value;
        payment.cardtype = formOrder.cardtype.value;
        payment.pur_type= formOrder.pur_type.value;
        payment.exp_month = formOrder.exp_month.value;
        payment.exp_year = formOrder.exp_year.value;
        
        $('#confirm_username').html(payment.username);
        $('#confirm_email').html(payment.email);
        $('#confirm_name').html(payment.del_name);
        $('#confirm_phone').html(payment.del_phone);
        $('#confirm_address').html(payment.address);
        $('#confirm_zipcode').html(payment.zip_code);
        $('#confirm_city').html(payment.city);
        $('#confirm_cardnum').html(payment.cardnum);
        $('#confirm_cardtype').html(payment.cardtype);
        $('#confirm_expiry').html(payment.exp_month+"/"+payment.exp_year);
    });
});
