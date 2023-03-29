<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>editProfile</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/editProfile.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/editPassword.css" />
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
      href="https://fonts.googleapis.com/css2?family=Josefin+Slab:ital@1&display=swap"
      rel="stylesheet"
    />
     <script src="https://kit.fontawesome.com/9416f63361.js" crossorigin="anonymous"></script>
    <script>
      window.onload = function () {
        document
          .getElementById("address_kakao")
          .addEventListener("click", function () {
            //주소입력칸을 클릭하면
            //카카오 지도 발생
            new daum.Postcode({
              oncomplete: function (data) {
                //선택시 입력값 세팅
                document.getElementById("address_kakao").value = data.address; // 주소 넣기
                document.querySelector("input[name=address_detail]").focus(); //상세입력 포커싱
              },
            }).open();
          });
      };
    </script>
  </head>
  <body>
    <div id="body-main">
      <div id="main-header"></div>
      <div id="main-body">
        <div class="body-main">
          <div class="body-main-body">
            <div class="picture-box">
              <div class="picture-box-left">
                <div class="img-box">
                  <img
                    src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR04JlroqrWnZpJunUNp4esFmT_qjuYd9WKoh0Lvj0&s"
                    alt="#"
                    class="img-box-img"
                  />
                </div>
              </div>
              <div class="picture-box-rigth">
                <a href="#" class="change-picture">프로필 사진 바꾸기</a>
              </div>
            </div>
            <div class="nickname-box">
              <div class="nickname-box-left">이름</div>
              <div class="nickname-box-right">
                <input type="text" class="text-box2" placeholder="이름" />
                <div class="text-box2-text">
                  <p>
                    사람들이 이름, 별명 또는 비즈니스 이름 등 회원님의 알려진
                    이름을 사용하여 회원님의 계정을 찾을 수 있도록 도와주세요.
                  </p>
                  <br />
                  <p>이름은 14일 안에 두 번만 변경할 수 있습니다.</p>
                </div>
              </div>
            </div>
            <div class="name-box">
              <div class="name-box-left">사용자 이름</div>
              <div class="name-box-right">
                <input
                  type="text"
                  class="text-box3"
                  placeholder="사용자 이름"
                />
                <div class="text-box3-text">
                  대부분의 경우 이후 14일 동안 사용자 이름을 다시 poe.ntry(으)로
                  변경할 수 있습니다.
                </div>
              </div>
            </div>
            <div class="introduce-box">
              <div class="introduce-box-left">소개</div>
              <div class="introduce-box-right">
                <textarea
                  id="myTextarea"
                  class="text-box4"
                  maxlength="150"
                ></textarea>
                <div id="charCount" class="box4-cnt">0 / 150</div>
              </div>
            </div>
            <div class="birth-box">
              <div class="birth-box-left">생년월일</div>
              <div class="birth-box-right">
                <input type="date" class="birthday" />
              </div>
            </div>
            <div class="phone-number-box">
              <div class="phone-box-left">핸드폰 번호</div>
              <div class="phone-box-right">
                <input
                  type="tel"
                  class="phone"
                  name="phone"
                  placeholder="010-1234-5678"
                  pattern="[0-9]{3}-[0-9]{4}-[0-9]{4}"
                />
              </div>
            </div>
            <div class="email-box">
              <div class="email-box-left">이메일</div>
              <div class="email-box-right">
                <input
                  type="email"
                  class="email"
                  name="email"
                  placeholder="example@example.com"
                />
              </div>
            </div>
            <div class="address-box">
              <div class="address-box-left">주소</div>
              <div class="address-box-right">
                <input
                  id="address_kakao"
                  type="text"
                  class="address"
                  placeholder="시/군/구 도로명 주소"
                />
                <input type="text" class="address" placeholder="상세 주소" />
              </div>
            </div>
            <div class="editok-box">
              <button type="button" class="editok-btn" value="#">
                회원정보 수정
              </button>
            </div>
            <div class="eidt-password-box">
              <!-- 모달 열기 버튼 -->
              <button onclick="openModal()" class="eidt-modal">
                비밀번호 변경
              </button>

              <!-- 모달 창 -->
              <div id="myModal" class="modal">
                <div class="modal-content">
                  <span class="close">&times;</span>
                  <div class="main">
                    <div class="main-page">
                      <div class="password-name">
                        <h3>비밀번호 변경</h3>
                      </div>
                      <div class="password-text">
                        <p>
                          누군가 엑세스 권한을 얻으려고 시도중인 경우 계정을
                          보호하기 위해 이 세션을 제외한 모든 세션에서
                          로그아웃됩니다.
                        </p>
                        <p>
                          비밀번호는 6자 이상이어야 하고 숫자, 영문,
                          특수기호(!$@%)의 조합을 포함해야 합니다.
                        </p>
                      </div>
                      <div class="now-password-box">
                        <input
                          type="text"
                          class="box1"
                          placeholder="현재 비밀번호"
                        />
                      </div>
                      <div class="new-password-box">
                        <input
                          type="text"
                          class="box2"
                          placeholder="새 비밀번호"
                        />
                      </div>
                      <div class="agian-password-box">
                        <input
                          type="text"
                          class="box3"
                          placeholder="새 비밀번호 재입력"
                        />
                      </div>
                      <div class="no-password">
                        <a href="#" class="box4">비밀번호를 잊으셨나요?</a>
                      </div>
                      <div class="changeok-btn">
                        <button type="button" class="box5" value="#">
                          비밀번호 변경
                        </button>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="goodbye-box">
              <a href="#" class="goodbye-btn">회원탈퇴</a>
            </div>
          </div>
        </div>

        <div class="body-side-bar">
          <div class="sidebar-menu">
            <li class="sidebar-name"><a href="#">CookPang</a></li>
            <ul class="sidebar-ul">
              <li class="sidebar-li">
                <div class="li-box">
                 <!--  <img src="../img/managerImg/home.png" alt="" class="sidebar-img" /> -->
                  <i class="fa-solid fa-house"></i>
                  <a href="#">홈</a>
                </div>
              </li>
              <li class="sidebar-li">
                <div class="li-box">
                  <!-- <img
                    src="../img/managerImg/h.png"
                    alt=""
                    class="sidebar-img"
                  /> -->
                  <i class="fa-solid fa-magnifying-glass"></i>
                  <a href="#">검색</a>
                </div>
              </li>
              <li class="sidebar-li">
                <div class="li-box">
                  <!-- <img
                    src="../img/managerImg/heart.png"
                    alt=""
                    class="sidebar-img"
                  /> -->
                    <i class="fa-regular fa-heart"></i>
                  <a href="#">알림</a>
                </div>
              </li>
              <li class="sidebar-li">
                <div class="li-box">
                 <!--  <img
                    src="../img/managerImg/plus.png"
                    alt=""
                    class="sidebar-img"
                  /> -->
                  <i class="fa-regular fa-square-plus"></i>
                  <a href="#">만들기</a>
                </div>
              </li>
              <li class="sidebar-li">
                <div class="li-box">
                  <!-- <img
                    src="../img/managerImg/heart.png"
                    alt=""
                    class="sidebar-img"
                  /> -->
                   <i class="fa-regular fa-bookmark"></i>
                  <a href="#">찜한 레시피</a>
                </div>
              </li>
              <li class="sidebar-li">
                <div class="li-box">
                  <!-- <img
                    src="../img/managerImg/pro.png"
                    alt=""
                    class="sidebar-img"
                  /> -->
                   <i class="fa-regular fa-user"></i>
                  <a href="#">프로필</a>
                </div>
              </li>
            </ul>
            <li class="sidebar-login"><a href="#">로그인</a></li>
          </div>
        </div>
      </div>

      <div id="main-footer"></div>
      </div>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://code.jquery.com/jquery-latest.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/editProfile.js"></script>
  </body>
</html>
