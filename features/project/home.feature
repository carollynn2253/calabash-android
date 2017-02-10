Feature: Home feature

  Scenario: As a valid user I can log into my app and click tabs
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
    When I press "資產"
    Then I wait for 3 seconds
    Then I should see "報單資產"
    When I press "獎金"
    Then I wait for 3 seconds
    Then I should see "可用獎金"


  Scenario: As a valid user I can click menu button
    Then I wait for 5 seconds
    Then I should see "首頁"
    When I press view with id "message"
    Then I wait for 3 seconds
    Then I should see "服務台"
    Then I press "訊息"
    Then I press ultimate recycler list item number 2
    Then I should see "訊息內頁"
    Then I go back
    Then I press "公告"
    Then I press ultimate recycler list item number 1
    Then I should see "公告內頁"
    Then I go back
    Then I go back
    Then I should see "首頁"
