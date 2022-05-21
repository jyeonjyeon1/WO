/*---LEFT BAR ACCORDION----*/
$(function() {
  // 열리는 것
  $('#nav-accordion').dcAccordion({
    eventType: 'click',
    autoClose: false,
    saveState: false,
    disableLink: true,
    speed: 'fast',
    showCount: false,
    autoExpand: true,
          //  cookie: 'dcjq-accordion-1',
    classExpand: 'dcjq-current-parent'
  });
});



var Script = function() {
  //    sidebar dropdown menu auto scrolling

  jQuery('#sidebar .sub-menu > a').click(function() {
    var o = ($(this).offset());
    diff = 250 - o.top;
    if (diff > 0)
      $("#sidebar").scrollTo("-=" + Math.abs(diff), 500);
    else
      $("#sidebar").scrollTo("+=" + Math.abs(diff), 500);
  });



  //    sidebar toggle

  $(function() {
    function responsiveView() {
      var wSize = $(window).width();
      if (wSize <= 768) {
        $('#container').addClass('sidebar-close');
        $('#sidebar > ul').hide();
      }

      if (wSize > 768) {
        $('#container').removeClass('sidebar-close');
        $('#sidebar > ul').show();
      }
    }
    $(window).on('load', responsiveView);
    $(window).on('resize', responsiveView);
  });
  //사이드바 보여주고 닫는거
  $('.openup').click(function() {
    if ($('#sidebar > ul').is(":visible") === true) {
      $('#main-content').css({
        'margin-left': '0px'
      });
      $('#sidebar').css({
        'margin-left': '-210px'
      });
      $('#sidebar > ul').hide();
      $("#container").addClass("sidebar-closed");
    } else {
      $('#main-content').css({
        'margin-left': '210px'
      });
      $('#sidebar > ul').show();
      $('#sidebar').css({
        'margin-left': '0'
      });
      $("#container").removeClass("sidebar-closed");
    }
  });

  // 사이드바 커서
  $("#sidebar").niceScroll({
    styler: "fb",
    cursorcolor: "#FF6F00",
    cursorwidth: '3',
    cursorborderradius: '10px',
    background: '#404040',
    spacebarenabled: false,
    cursorborder: ''
  });

  //  $("html").niceScroll({styler:"fb",cursorcolor:"#4ECDC4", cursorwidth: '6', cursorborderradius: '10px', background: '#404040', spacebarenabled:false,  cursorborder: '', zindex: '1000'});

  // widget tools

  jQuery('.panel .tools .fa-chevron-down').click(function() {
    var el = jQuery(this).parents(".panel").children(".panel-body");
    if (jQuery(this).hasClass("fa-chevron-down")) {
      jQuery(this).removeClass("fa-chevron-down").addClass("fa-chevron-up");
      el.slideUp(200);
    } else {
      jQuery(this).removeClass("fa-chevron-up").addClass("fa-chevron-down");
      el.slideDown(200);
    }
  });

  jQuery('.panel .tools .fa-times').click(function() {
    jQuery(this).parents(".panel").parent().remove();
  });


  //    tool tips

  $('.tooltips').tooltip();

  //    popovers

  $('.popovers').popover();



  // custom bar chart

  if ($(".custom-bar-chart")) {
    $(".bar").each(function() {
      var i = $(this).find(".value").html();
      $(this).find(".value").html("");
      $(this).find(".value").animate({
        height: i
      }, 2000)
    })
  }

}();

jQuery(document).ready(function( $ ) {
  // header footer import
  // $('#headers').load("header.html");
  // $('#footers').load("footer.html");
  // Go to top
  $('.go-top').on('click', function(e) {
    e.preventDefault();
    $('html, body').animate({scrollTop : 0},500);
  });
});


//


$(document).ready(function () {
  
    $(".testjirong").click(function () {
      // $("#main-content").load("kkk.html");
      

      if ($('.testjirong').hasClass('open')==false) {
        $(".testjirong").addClass("open");
        $(".allmenu").addClass("active");
      }else{
        $(".testjirong").removeClass("active open");
        $(".allmenu").removeClass("active");
      }
    });

    $(".point_select").click(function () {

      if ($('.point_select_form').hasClass('active')==false) {
        $(".point_select_form").addClass("active");
      }else{
        $(".point_select_form").removeClass("active");
      }
    });

    $(".no_soldout").click(function () {
        $(".sold_out_btn").removeClass("active");
        $(".sold_out_option_btn").removeClass("active");
    });

    $("#menu__1").click(function () {

      if ($("#menu__1").hasClass('active')==false) {
        $("#menu__1").addClass("active");
      }else{
        $("#menu__1").removeClass("active");
      }
    });

    $("#menu__2").click(function () {

      if ($("#menu__2").hasClass('active')==false) {
        $("#menu__2").addClass("active");
      }else{
        $("#menu__2").removeClass("active");
      }
    });

    $("#menu__3").click(function () {

      if ($("#menu__3").hasClass('active')==false) {
        $("#menu__3").addClass("active");
      }else{
        $("#menu__3").removeClass("active");
      }
    });

    $("#menu__4").click(function () {

      if ($("#menu__4").hasClass('active')==false) {
        $("#menu__4").addClass("active");
      }else{
        $("#menu__4").removeClass("active");
      }
    });

    $("#menu__5").click(function () {

      if ($("#menu__5").hasClass('active')==false) {
        $("#menu__5").addClass("active");
      }else{
        $("#menu__5").removeClass("active");
      }
    });

    $("#menu__6").click(function () {

      if ($("#menu__6").hasClass('active')==false) {
        $("#menu__6").addClass("active");
      }else{
        $("#menu__6").removeClass("active");
      }
    });


    for(i=2;i<7;i++){
      $(`#menu__${i}`).click(function () {

        if ($(`#menu__${i}`).hasClass('active')==false) {
          $(`#menu__${i}`).addClass("active");
        }else{
          $(`#menu__${i}`).removeClass("active");
        }
      });
    }
    // 메뉴그룹 추가 버튼
    $("#add_menugroup_btn").click(function () {

      if ($(".add_menugroup").hasClass('active')==false) {
        $(".add_menugroup").addClass("active");
        $("#add_menugroup_btn").val("추가하기");
      }else{
        $(".add_menugroup").removeClass("active");
        $("#add_menugroup_btn").val("메뉴그룹 추가");
      }
    });


    $("#faq__update__btn").click(function () {

      if ($("#faq__update__ta").hasClass('active')==false) {
        $("#faq__update__ta").addClass("active");
        $(".fa-pencil").addClass("fa-check");
        $(".fa-pencil").removeClass("fa-pencil");
      }else{
        $("#faq__update__ta").removeClass("active");
        $(".fa-check").addClass("fa-pencil");
        $(".fa-check").removeClass("fa-check");
      }
    });
    $(".search_change1").click(function () {

      if ($("#search__text1").hasClass('active')==false) {
        $("#search__text1").addClass("active");
        $("#search__url1").addClass("active");
        $(".fa-pencil").addClass("fa-check");
        $(".fa-pencil").removeClass("fa-pencil");
      }else{
        $("#search__text1").removeClass("active");
        $("#search__url1").removeClass("active");
        $(".fa-check").addClass("fa-pencil");
        $(".fa-check").removeClass("fa-check");
      }
    });
    $(".search_change2").click(function () {

      if ($("#search__text2").hasClass('active')==false) {
        $("#search__text2").addClass("active");
        $("#search__url2").addClass("active");
        $(".fa-pencil").addClass("fa-check");
        $(".fa-pencil").removeClass("fa-pencil");
      }else{
        $("#search__text2").removeClass("active");
        $("#search__url2").removeClass("active");
        $(".fa-check").addClass("fa-pencil");
        $(".fa-check").removeClass("fa-check");
      }
    });
   
    $("#banner_add_btn").click(function () {

        $("#image__add1").addClass("active");
      
    });


//메뉴그룹 수정
	$(".updateMenuGroup").click(function() {
		var mg_codeforUpdate = $(this).attr("value");
		var forupdate = $(this).attr("forupdate"); //a 의 id
		
		//이름 수정 시작
		Swal.fire({
			//변경할 메뉴그룹명 입력받음
		    text: "변경할 메뉴그룹명 : ",
		    showCancelButton: true,
		    input: "text",
		    confirmButtonColor: "#3085d6",
  		    cancelButtonColor: "#d33",
		    cancelButtonText: "취소",
		    confirmButtonText: "변경"
		}).then((result) => {
			//입력값이 있을 경우
  		    if (result.value) {
  		    	$.ajax({
  		    	    type: "POST",
  		    	    url: "/updateMenuGroup.store",
  		    	    data: JSON.stringify({ "mg_code": mg_codeforUpdate , "mg_name": result.value}), //{md_code랑 변경할 이름으로 가져옴}
  		    	    dataType: "json",
  		    	    contentType: "application/json",
  		    	    success: function (data) {
  		    	        if (data == 1) {
  		    	            console.log("변경 성공");
  		    	            //바꿔버리는거 
  		    	            document.getElementById(forupdate).innerText = result.value;
	  		    	        Swal.fire({
	  		    	            icon: "success",
	  		    	            title: "변경 완료",
	  		    	            showConfirmButton: false,
	  		    	            timer: 1500
	  		    	        });
  		    	        }
  		    	    },
  		    	    error: function (data) {
  		    	        console.log("변경오류");
  		    	    }
  		    	});//ajax  
  		    }
  		}); 
		//이름 수정 끝
		  
	});//메뉴그룹 수정 끝
  
  //메뉴그룹 삭제
	$(".deleteMenuGroup").click(function() {
		var mg_codeforDelete = $(this).attr("value");
		var fordelete = $(this).attr("fordelete"); //a 의 id
		var fordelete2 = $(this).attr("fordelete2"); //ul 의 id
		var fordelete3 = $(this).attr("fordelete3"); //button의 id
		//삭제 확인
		Swal.fire({
			  title: "진짜삭제되니까 테스트용 메뉴만 삭제하세요",
// 			  title: "삭제하시겠습니까??",
			  html: "<p>진짜 삭제된다!@!@#</p><p>진짜 삭제된다!@!@#</p><p>진짜 삭제된다!@!@#</p><p>진짜 삭제된다!@!@#</p><p>진짜 삭제된다!@!@#</p>",
			  icon: "warning",
			  showCancelButton: true,
			  confirmButtonColor: "#3085d6",
			  cancelButtonColor: "#d33",
			  confirmButtonText: "삭제",
			  cancelButtonText: "아니오"
			}).then((result) => {
			  if (result.isConfirmed) {
			 		$.ajax({
	 	 		  type: "POST",
	 	           url: "/deleteMenuGroup.store",
	 	          data: JSON.stringify({"mg_code":mg_codeforDelete}),
	 	           dataType: "json",
	 	          contentType: "application/json",
	 	          success:function(data){
	 	        	  if(data==1){
	 	         	 	console.log("삭제 성공");
	 	         	 	//숨겨버릴거임 
	 	         	 	 $("#"+fordelete).remove();
	 	         	 	 $("#"+fordelete2).remove();
	 	         	 	 $("#"+fordelete3).remove();
		 	         	 Swal.fire({
					  		  icon: "success",
					  		  title: "삭제 완료",
					  		  showConfirmButton: false,
					  		  timer: 1500
						 });
	 	        	  }
	 	           },
		           error:function(data){
			          console.log("삭제");
		          }
	 	 	  	});//ajax  
			  }//if (result.isConfirmed)
			})//then((result)
		  
	});//메뉴그룹 삭제 끝
	 
});

function deleteAlert(){
  Swal.fire({
    title: '정말 삭제하시겠습니까?',
    text: "삭제시 복구할 수 없습니다.",
    icon: 'warning',
    showCancelButton: true,
    confirmButtonColor: '#3085d6',
    cancelButtonColor: '#d33',
    confirmButtonText: '네',
    cancelButtonText: '아니오'
  }).then((result) => {
    if (result.isConfirmed) {
      Swal.fire(
        '삭제완료',
        '삭제되었습니다.',
        'success'
      )
    }
  })
}