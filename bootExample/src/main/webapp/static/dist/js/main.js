function resetSelect2(){
	$(".select2").each(function(){
		if(this.id != ""){
			$(this).select2('val', '-1');
		}
	});
}

$(function() { 
	$.extend($.validator.messages, {
	    required: "This field is required. / Girilmesi zorunlu alan.",
	    email: "Please enter a valid email address.",
	    url: "Please enter a valid URL.",
	    date: "Please enter a valid date.",
	    number: "Please enter a valid number. / Lütfen sayı giriniz.",
	    digits: "Please enter only digits.",
	    maxlength: jQuery.validator.format("Please enter no more than {0} characters. / Lütfen {0} karakterden fazla girmeyiniz."),
	    minlength: jQuery.validator.format("Please enter at least {0} characters. / Lütfen en az {0} karakter giriniz."),
	    rangelength: jQuery.validator.format("Please enter a value between {0} and {1} characters long."),
	    range: jQuery.validator.format("Please enter a value between {0} and {1}."),
	    equalTo : jQuery.validator.format("Please enter the same value again. / Lütfen aynı şifreyi giriniz."),
	});
	
	$.validator.addMethod(
	        "regex",
	        function(value, element, regexp) {
	            var re = new RegExp(regexp);
	            return this.optional(element) || re.test(value);
	        },
	        "Please check your input. / Lütfen girdinizi kontrol ediniz."
	);
	
	var lrow = $("#lrow").html();
	var lcol = $("#lcol").html();
	$("#l"+lrow).addClass('active');
	$("#l"+lcol).addClass('active');
	
	
	$(".select2").select2();
	
	$("#resetButton").click(function(){
		resetSelect2();
	});
});