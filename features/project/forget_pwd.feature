Feature: Forget pwd feature

  Scenario: As a valid user I can click forget pwd
    Then I wait for 5 seconds
  	Then I wait to see "Login"
  	Then I wait for 5 seconds
    When I press "找回密碼？"
    Then I should see "取得新密碼"
    Then I enter "git4u" into input field number 1
    Then I hide the keyboard
    Then I press "獲取驗證碼"
    Then I should see "驗證碼已發送至註冊信箱，請前往郵箱取得驗證碼。"
    Then I press "確定"
    Then I enter "12345678" into input field number 2
    Then I hide the keyboard
    Then I press "取得密碼函"
    Then I should see "新密碼已發送至註冊信箱，請前往郵箱取得密碼。"
    Then I press "確定"
    Then I wait for 3 seconds
    Then I should see "Login"


  Scenario: As a new user I can not get new pwd if not fill the form correctly
    Then I wait for 5 seconds
    Then I wait to see "Login"
    Then I wait for 5 seconds
    When I press "找回密碼？"
    Then I should see "取得新密碼"

    Then I press "獲取驗證碼"
    Then I should see "用戶名不得為空"
    Then I press "確定"

    Then I press "取得密碼函"
    Then I should see "用戶名不得為空"
    Then I press "確定"
    Then I enter "git4u" into input field number 1
    Then I hide the keyboard

    Then I press "獲取驗證碼"
    Then I should see "驗證碼已發送至註冊信箱，請前往郵箱取得驗證碼。"
    Then I press "確定"

    Then I press "取得密碼函"
    Then I should see "驗證碼不得為空"
    Then I press "確定"
    Then I enter "12345678" into input field number 2
    Then I hide the keyboard

    Then I press "取得密碼函"
    Then I should see "新密碼已發送至註冊信箱，請前往郵箱取得密碼。"
    Then I press "確定"
    Then I wait for 3 seconds
    Then I should see "Login"
