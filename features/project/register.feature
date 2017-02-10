Feature: Register feature

  Scenario: As a new user I can not register if not fill the form correctly
    Then I wait for 5 seconds
    Then I wait to see "Login"
    Then I wait for 5 seconds
    When I press "註冊用戶"
    Then I should see "用戶名"

    Then I press "確定"
    Then I should see "用戶名不得為空"
    Then I press "確定"
    Then I enter "git4u" into input field number 1
    Then I hide the keyboard

    Then I press "確定"
    Then I should see "郵箱不得為空"
    Then I press "確定"
    Then I enter "git4u@git4u.com" into input field number 2
    Then I hide the keyboard

    Then I press "確定"
    Then I should see "密碼不得為空"
    Then I press "確定"
    Then I enter "aaaa1234" into input field number 3
    Then I hide the keyboard

    Then I press "確定"
    Then I should see "確認密碼不得為空"
    Then I press "確定"
    Then I enter "bbbb1234" into input field number 4
    Then I hide the keyboard

    Then I press "確定"
    Then I should see "密碼與確認密碼不相同"
    Then I press "確定"
    Then I clear input field number 4
    Then I enter "aaaa1234" into input field number 4
    Then I hide the keyboard

    Then I press "確定"
    Then I should see "推薦人用戶名不得為空"
    Then I press "確定"
    Then I enter "recommend_name" into input field number 5
    Then I hide the keyboard

    Then I scroll down

    Then I press "確定"
    Then I should see "安置人用戶名不得為空"
    Then I press "確定"
    Then I enter "config_name" into last input field
    Then I hide the keyboard

    Then I press "確定"
    Then I should see "钻石守则"
    Then I press "我已閱讀並同意"
    Then I wait for 3 seconds
    Then I should see "註冊成功，郵件已發送，等待激活！"
    Then I press "確定"
    Then I wait for 10 seconds
    Then I should see "首頁"


  Scenario: As a new user I can register
    Then I wait for 5 seconds
  	Then I wait to see "Login"
  	Then I wait for 5 seconds
    When I press "註冊用戶"
    Then I should see "用戶名"
    Then I enter "git4u" into input field number 1
    Then I hide the keyboard
    Then I enter "git4u@git4u.com" into input field number 2
    Then I hide the keyboard
    Then I enter "aaaa1234" into input field number 3
    Then I hide the keyboard
    Then I enter "aaaa1234" into input field number 4
    Then I hide the keyboard
    Then I enter "recommend_name" into input field number 5
    Then I hide the keyboard

    Then I scroll down

    Then I enter "config_name" into last input field
    Then I hide the keyboard

    Then I press "確定"
    Then I should see "钻石守则"
    Then I press "我已閱讀並同意"
    Then I wait for 3 seconds
    Then I should see "註冊成功，郵件已發送，等待激活！"
    Then I press "確定"
    Then I wait for 10 seconds
    Then I should see "首頁"
