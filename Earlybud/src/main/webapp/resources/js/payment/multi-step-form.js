$("#pwd").keyup(function(){
    var str = formOrder.pwd.value;
    var nick = formOrder.nickname.value;
    console.log(str);
    var request = $.ajax({
        url:"../payment/pwdCheck", 
        method:"post", 
        data:{pwd:str, nickname:nick}, 
        dataType:"html"});
	    request.done(function(data){
	    	console.log("data: "+data);
	    	console.log("typeof data: "+ typeof(data));
	    	if(data){
	            $('#pwd_ok').css('color','blue');
	            $("#pwd_ok").html("비밀번호 확인"); 	
	    	}else{
	    		$('#pwd_ok').css('color','red');
	            $("#pwd_ok").html("잘못된 비밀번호");
	    	}
	   });
});

$('[data-form-step]').on('click', function () {
  var tabId = $(this).attr('data-form-step');
  $('[href="' + tabId + '"]').tab('show');
});

$('#submit_btn').on('click', function(e) {
    var serializeArray = $(this).serializeArray();
    //alert(serializeArray);
    $('.nav-tabs-progress').find('.nav-item').last().addClass('complete');
    console.log("before ajax");
    $.ajax({
        method: 'post',
        url: '../payment/reserve_payment', 
        data: serializeArray,
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
        payment.addr1 = formOrder.addr1.value;
        payment.addr2 = formOrder.addr2.value;
        payment.cardnum = formOrder.cardnum.value;
        payment.cardcvc = formOrder.cardcvc.value;
        payment.birthdate = formOrder.birthdate.value;
        payment.pur_type= formOrder.pur_type.value;
        payment.exp_month = formOrder.exp_month.value;
        payment.exp_year = formOrder.exp_year.value;
        payment.cardpwd = formOrder.cardpwd.value;
        
        $('#confirm_nickname').html(payment.nickname);
        $('#confirm_email').html(payment.email);
        $('#confirm_name').html(payment.del_name);
        $('#confirm_phone').html(payment.del_phone);
        $('#confirm_zipcode').html(payment.zip_code);
        $('#confirm_addr1').html(payment.addr1);
        $('#confirm_addr2').html(payment.addr2);
        $('#confirm_pur_type').html(payment.pur_type);
        $('#confirm_cardnum').html(payment.cardnum);
        $('#confirm_birthdate').html(payment.birthdate);
        $('#confirm_expiry').html(payment.exp_month+"/"+payment.exp_year);
    });
});
