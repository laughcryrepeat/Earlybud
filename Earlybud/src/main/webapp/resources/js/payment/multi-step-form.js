$('[data-form-step]').on('click', function () {
  var tabId = $(this).attr('data-form-step');
  $('[href="' + tabId + '"]').tab('show');
});

$('#formOrder').on('submit', function(e) {
  $('.nav-tabs-progress').find('.nav-item').last().addClass('complete');
  e.preventDefault();
});

var payment = {}
$(document).ready(function(){
    $('#confirm_btn').click(function(){
        payment.username = formOrder.username.value;
        payment.email = formOrder.email.value;
        payment.pwd = formOrder.pwd.value;
        payment.pwd_check = formOrder.pwd_check.value;
        payment.full_name = formOrder.full_name.value;
        payment.phone = formOrder.phone.value;
        payment.zip_code = formOrder.zip_code.value;
        payment.city = formOrder.city.value;
        payment.address = formOrder.address.value;
        payment.cardnum = formOrder.cardnum.value;
        payment.cvc = formOrder.cvc.value;
        payment.card_type = formOrder.card_type.value;
        payment.exp_month = formOrder.exp_month.value;
        payment.exp_year = formOrder.exp_year.value;
        
        $('#confirm_username').html(payment.username);
        $('#confirm_email').html(payment.email);
        $('#confirm_name').html(payment.full_name);
        $('#confirm_phone').html(payment.phone);
        $('#confirm_address').html(payment.address);
        $('#confirm_zipcode').html(payment.zip_code);
        $('#confirm_city').html(payment.city);
        $('#confirm_cardnum').html(payment.cardnum);
        $('#confirm_cardtype').html(payment.card_type);
        $('#confirm_expiry').html(payment.exp_month+"/"+payment.exp_year);
    });
});