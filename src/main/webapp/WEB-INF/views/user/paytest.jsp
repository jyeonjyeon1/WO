<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>결제 테스트</title>
<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
</head>
<body>
  <%@ include file="/WEB-INF/views/user/inc/header.jsp" %>
  <div class="container" style="max-width:400px;">
	  <form >
			<div class="row">
				<div class="col-12">
					<input type="text" name="u_id" id="u_id" placeholder="아이디 (필수)"
						class="reg-form-control" autofocus />
				</div>
			</div>
			<div class="row">
				<div class="col-12 mt-10">
					<input type="text" name="u_password" id="u_password"
						placeholder="비밀번호 (필수)" class="reg-form-control">
				</div>
			</div>
			<div class="row">
				<div class="col-12 mt-10">
					<button type="button" onclick="payment()">결제</button>
				</div>
			</div>
	</form>
  
  </div>
  <a id="send-to-btn" href="#" onclick="sendTo();">
  <img src="//k.kakaocdn.net/14/dn/btqc6xrxbuT/7VJk7YSWITkz9K9pbXEffk/o.jpg" alt="나에게 보내기 버튼" />
</a>
<a id="create-kakao-link-btn" href="javascript:;">
  <img
    src="https://developers.kakao.com/assets/img/about/logos/kakaolink/kakaolink_btn_medium.png"
    alt="카카오링크 보내기 버튼"
  />
</a>
<button class="api-btn" onclick="getFriends()">친구 목록 가져오기</button>

<ul id="friend-list"></ul>

<script type="text/javascript">
Kakao.init('afa33a5b39df9de72171ff16aabcb982');
  function sendMessage(id) {
    if (confirm('메시지를 전송하겠습니까?')) {
      Kakao.API.request({
        url: '/v1/api/talk/friends/message/default/send',
        data: {
          receiver_uuids: [id],
          template_object: {
            object_type: 'feed',
            content: {
              title: '베리베리 치즈 케익',
              description:
                '#케익 #딸기 #블루베리 #카페 #디저트 #달달함 #분위기 #삼평동',
              image_url:
                'http://k.kakaocdn.net/dn/bDgfik/btqwQWk4CRU/P6wNJJiQ3Ko21KNE1TiLw1/kakaolink40_original.png',
              link: {
                mobile_web_url: 'https://developers.kakao.com',
                web_url: 'https://developers.kakao.com',
              },
            },
            social: {
              like_count: 286,
              comment_count: 45,
              shared_count: 845,
            },
            buttons: [
              {
                title: '웹으로 보기',
                link: {
                  mobile_web_url: 'https://developers.kakao.com',
                  web_url: 'https://developers.kakao.com',
                },
              },
              {
                title: '앱으로 보기',
                link: {
                  mobile_web_url: 'https://developers.kakao.com',
                  web_url: 'https://developers.kakao.com',
                },
              },
            ],
          },
        },
        success: function (res) {
          alert('메시지 전송이 완료되었습니다. \n' + JSON.stringify(res))
        },
        fail: function (err) {
          alert('메시지 전송에 실패했습니다. \n' + JSON.stringify(err))
        },
      })
    }
  }
  function getFriends() {
    document.getElementById('friend-list').innerHTML = ''
    Kakao.Auth.login({
      scope: 'friends,talk_message',
      success: function (res) {
        Kakao.API.request({
          url: '/v1/api/talk/friends',
          success: function (res) {
            if (res.elements.length > 0) {
              for (let i = 0, item; (item = res.elements[i]); i++) {
                const friendElement = document.createElement('li')
                const profileImg = item.profile_thumbnail_image
                  ? item.profile_thumbnail_image
                  : 'http://k.kakaocdn.net/dn/1xGCm/btqwLTjcNzV/orvxGiWth8JR20SgUcDNKK/kakaolink40_original.jpg'

                friendElement.innerHTML = '<div class="friend">'
                  + '<img src="' + profileImg + '" alt="프로필 이미지">'
                  + '<strong>' + item.profile_nickname + '</strong>'
                  + '</div>'
                  + '<button onclick="sendMessage(\'' + item.uuid + '\')">전송</button>'
                document
                  .getElementById('friend-list')
                  .appendChild(friendElement)
              }
            } else {
              document.getElementById('friend-list').innerHTML =
                '앱에 연결된 친구가 없습니다. 앱에 연결된 친구만 조회할 수 있습니다.'
            }
          },
          fail: function (err) {
            document.getElementById('friend-list').innerHTML = JSON.stringify(err)
          },
        })
      },
    })
  }
</script>
<script type="text/javascript">
// Kakao.init('afa33a5b39df9de72171ff16aabcb982');
//   Kakao.Link.createDefaultButton({
//     container: '#create-kakao-link-btn',
//     objectType: 'feed',
//     content: {
//       title: '딸기 치즈 케익',
//       description: '#케익 #딸기 #삼평동 #카페 #분위기 #소개팅',
//       imageUrl:
//         'http://k.kakaocdn.net/dn/Q2iNx/btqgeRgV54P/VLdBs9cvyn8BJXB3o7N8UK/kakaolink40_original.png',
//       link: {
//         mobileWebUrl: 'https://developers.kakao.com',
//         webUrl: 'https://developers.kakao.com',
//       },
//     },
//     social: {
//       likeCount: 286,
//       commentCount: 45,
//       sharedCount: 845,
//     },
//     buttons: [
//       {
//         title: '웹으로 보기',
//         link: {
//           mobileWebUrl: 'https://developers.kakao.com',
//           webUrl: 'https://developers.kakao.com',
//         },
//       },
//       {
//         title: '앱으로 보기',
//         link: {
//           mobileWebUrl: 'https://developers.kakao.com',
//           webUrl: 'https://developers.kakao.com',
//         },
//       },
//     ],
//   })
</script>
<script>
// Kakao.init('afa33a5b39df9de72171ff16aabcb982');
//   function sendTo() {
//     Kakao.Auth.login({
//       scope: 'TALK_MESSAGE',
//       success: function() {
//         Kakao.API.request({
//           url: '/v2/api/talk/memo/default/send',
//           data: {
//             template_object: {
//               object_type: 'feed',
//               content: {
//                 title: '딸기 치즈 케익',
//                 description: '#케익 #딸기 #삼평동 #카페 #분위기 #소개팅',
//                 image_url:
//                   'http://k.kakaocdn.net/dn/Q2iNx/btqgeRgV54P/VLdBs9cvyn8BJXB3o7N8UK/kakaolink40_original.png',
//                 link: {
//                   mobile_web_url: 'https://developers.kakao.com',
//                   web_url: 'https://developers.kakao.com',
//                 },
//               },
//               social: {
//                 like_count: 286,
//                 comment_count: 45,
//                 shared_count: 845,
//               },
//               buttons: [
//                 {
//                   title: '웹으로 보기',
//                   link: {
//                     mobile_web_url: 'https://developers.kakao.com',
//                     web_url: 'https://developers.kakao.com',
//                   },
//                 },
//                 {
//                   title: '앱으로 보기',
//                   link: {
//                     mobile_web_url: 'https://developers.kakao.com',
//                     web_url: 'https://developers.kakao.com',
//                   },
//                 },
//               ],
//             },
//           },
//           success: function(res) {
//             alert('success: ' + JSON.stringify(res))
//           },
//           fail: function(err) {
//             alert('error: ' + JSON.stringify(err))
//           },
//         })
//       },
//       fail: function(err) {
//         alert('failed to login: ' + JSON.stringify(err))
//       },
//     })
//   }
</script>
  
  <%@ include file="/WEB-INF/views/user/inc/footer.jsp" %>
  <script src="resources/assets/js/jquery-3.6.0.js"></script>
  <script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.2.0.js"></script>
  <script>
  
  function payment(){
	  IMP.init('imp24090998'); //iamport 대신 자신의 "가맹점 식별코드"를 사용
	  IMP.request_pay({
	    pg: "kcp",
	    pay_method: "card",
	    merchant_uid : 'our_ordernumber2',
	    name : '결제테스트',
	    amount : 100,
	    buyer_email : 'etgohome8@gmail.com',
	    buyer_name : '홍길동',
	    buyer_tel : '010-1234-5678',
	    buyer_addr : '서울특별시 강남구 삼성동',
	    buyer_postcode : '123-456',
	    m_redirect_url: '/index.user'
	  }, function (rsp) { // callback
	      if (rsp.success) {
	        alert("결제완료");
	        //location.href="ordercomplete";
	      } else {
			alert("결제실패");
	      }
	  });
  }
  </script>
</body>
</html>