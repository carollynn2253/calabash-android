Feature: Test feature

  Scenario: As a valid user I can log into my app
    Then I wait for 5 seconds
  	Then I wait to see "Login"
  	Then I wait for 5 seconds
  	Then I enter "hello" into input field number 1
  	Then I enter "pwd" into input field number 2
  	Then I press the enter button
    When I press "登入"
    Then I should see "钻石守则"
    When I press "我已閱讀並同意"
    Then I should see "首頁"
    Then I swipe left
    Then I press "我的訂單"
    Then I wait for 5 seconds
    Then I press "WDD交易記錄"
    Then I press "確定"
    Then I should see "流水號"
    Then I enter "123456789" into input field number 1
    Then I press TextInputLayout number 2
    Then I wait for 1 seconds
    Then I press "確定"
    Then I press TextInputLayout number 3
    Then I wait for 3 seconds
    Given I set the NumberPicker value to 2
    Then I wait for 2 seconds
    Then I press "確定"
    Then I press view with id "start_date"
    Then I press "確定"
    Then I press view with id "end_date"
    Given I set the date to "01-12-2017" on DatePicker with index 1
    Then I press "確定"
    Then I press "搜索"
    Then I should see "交易類型/數量"
    Then I press ultimate recycler list item number 3
    Then I wait for 2 seconds
    Then I should see "WDD交易記錄資訊"
