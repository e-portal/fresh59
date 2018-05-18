$(document).ready(function () {
// ====================================================== //

    var jVal = {
        'fullName': function () {
            var ele = $('#fullname');

            if (ele.val().length < 3) {
                jVal.errors = true;
                ele.addClass('error');
            } else {
                ele.removeClass('error');
            }
        },

        'email': function () {
            var ele = $('#mail');
            var patt = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))/i;

            if (!patt.test(ele.val())) {
                jVal.errors = true;
                ele.addClass('error');
            } else {
                ele.removeClass('error');
            }
        },

        /*'payment' : function (){

            var ele = $('#woman');

            if($('input[name="payment"]:checked').length === 0) {
                jVal.errors = true;
                paymentInfo.removeClass('correct').addClass('error').html('&larr; Вы мужчина или женщина?').show();
                ele.removeClass('normal').addClass('wrong');
            } else {
                paymentInfo.removeClass('error').addClass('correct').html('&radic;').show();
                ele.removeClass('wrong').addClass('normal');
            }
        },*/




        'sendIt': function () {
            if (!jVal.errors) {
                /*$('#jform').submit();*/
                alert('submit')
            }
        }
    };

// ====================================================== //


});


$('.send').click(function () {
    alert('submit');
    var obj = $.browser.webkit ? $('body') : $('html');
    obj.animate({scrollTop: $('#jform').offset().top}, 750, function () {
        jVal.errors = false;
        jVal.fullName();
        jVal.email();
        /*jVal.payment();*/
        jVal.sendIt();
    });
    return false;
});

$('#fullname').change(jVal.fullName);
$('#mail').change(jVal.email);
/*$('input[name="payment"]').change(jVal.payment);*/

// ====================================================== //


// start test validity ------------>
/*
function checkForm(obj) {
   var hash = {};
   hash['email'] = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
   hash['name'] = /^.{3,}$/;
   hash['password'] = /^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$/;

   var _this = obj;
   var str = _this.val();
   var names = _this.attr('name, email');
   if (hash[names].test(str)) {
       return true;
   } else {
       _this.css('border-color', 'red').fadeIn(1500, function () {
           setTimeout(function () {
               _this.css('border-color', '#fbd402');
               $('.name_time').css('outline', '0');
               $('.namber_time').css('outline', '0');
               $('.email_time').css('outline', '0');
           }, 2000);
       });
       return false;
   }
}


$('form').on('submit', function (e) {
   e.preventDefault();

   namei = $(this).find('.name').attr('data-check') == 1 ? checkForm($(this).find('.name')) : true;
   tel = $(this).find('.phone').attr('data-check') == 1 ? checkForm($(this).find('.phone')) : true;
   email = $(this).find('.email').attr('data-check') == 1 ? checkForm($(this).find('.email')) : true;
   town = $(this).find('.town').attr('data-check') == 1 ? checkForm($(this).find('.town')) : true;
   _this = $(this);
   var url = $(this).attr('action');
   var data = $(this).serialize();
   console.log(namei, tel, email, town);

   if (namei && tel && email && town) {
       $.ajax({
           type: "GET",
           url: url,
           data: data,
           success: function (resp) {
               _this.trigger('reset')
           }

       });
      $('.pop_up_after, .popup_bg').fadeIn(500, function () {
           setTimeout(function () {
               $('.pup_up_application, .pup_up_callback').css('display', 'none');
           }, 300);
           setTimeout(function () {
               $('.pop_up_after, .popup_bg').css('display', 'none');
           }, 3000);
       });

       $('.close, .popup_bg').click(function () {
           $('.pop_up_after, .popup_bg').fadeOut(500);
       })
    }

});
$('form').each(function () {
    $(this).prepend($('<input name="utm" type="hidden">').val(location.href));
});*/
// <------------ end test validit