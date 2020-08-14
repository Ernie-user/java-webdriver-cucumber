@predefined
Feature: Smoke steps

  
  @predefined1
  Scenario: Predefined steps for Google
    Given I open url "https://google.com"
    Then I should see page title as "Google"
    Then element with xpath "//input[@name='q']" should be present
    When I type "Behavior Driven Development" into element with xpath "//input[@name='q']"
    Then I click on element using JavaScript with xpath "(//input[@name='btnK'])[1]"
    Then I wait for element with xpath "//*[@id='res']" to be present
    Then element with xpath "//*[@id='res']" should contain text "Cucumber"


  @predefined2
  Scenario: Predefined steps for Yahoo
    Given I open url "https://www.yahoo.com/"
    Then I should see page title as "Yahoo"
    Then element with xpath "//input[@id='header-search-input']" should be present
    When I type "Behavior Driven Development" into element with xpath "//input[@id='header-search-input']"
    And I click on element with xpath "//button[@id='header-desktop-search-button']"
    Then I wait for element with xpath "//*[@id='web']" to be present
    Then element with xpath "//*[@id='web']" should contain text "Cucumber"


  @predefined3
  Scenario: Predefined steps for Bing
    Given I open url "https://www.bing.com"
    Then I should see page title as "Bing"
    Then element with xpath "//input[@id='sb_form_q']" should be present
    When I type "Behavior Driven Development" into element with xpath "//input[@id='sb_form_q']"
    And I click on element with xpath "//label[@class='search icon tooltip']"
    Then I wait for element with xpath "//*[@id='b_results']" to be present
    # Use "//*[@class='b_algo']" to omit ad and video results
    Then element with xpath "//*[@id='b_results']" should contain text "Cucumber"


  @predefined4
  Scenario: Predefined steps for Gibiru
    Given I open url "http://gibiru.com"
    Then I should see page title as "Gibiru – Protecting your privacy since 2009"
    Then element with xpath "//input[@id='q']" should be present
    When I type "Behavior Driven Development" into element with xpath "//input[@id='q']"
    And I click on element with xpath "//button[@id='button-addon2']"
    Then I wait for 5 sec
    Then I wait for element with xpath "(//*[@class='gsc-expansionArea'])[1]" to be present
    Then element with xpath "(//*[@class='gsc-expansionArea'])[1]" should contain text "Cucumber"


  @predefined5
  Scenario: Predefined steps for Duckduckgo
    Given I open url "https://duckduckgo.com"
    Then I should see page title as "DuckDuckGo — Privacy, simplified."
    Then element with xpath "//input[@id='search_form_input_homepage']" should be present
    When I type "Behavior Driven Development" into element with xpath "//input[@id='search_form_input_homepage']"
    And I click on element with xpath "//input[@id='search_button_homepage']"
    Then I wait for element with xpath "//*[@id='links']" to be present
    Then element with xpath "//*[@id='links']" should contain text "Cucumber"


  @predefined6
  Scenario: Predefined steps for Swisscows
    Given I open url "https://swisscows.com"
    Then I should see page title as "Swisscows the alternative, data secure search engine."
    Then element with xpath "//input[@name='query']" should be present
    When I type "Behavior Driven Development" into element with xpath "//input[@name='query']"
    And I click on element with xpath "//button[@class='search-submit']"
    Then I wait for element with xpath "//*[@class='web-results']" to be present
    Then element with xpath "//*[@class='web-results']" should contain text "Cucumber"


  @predefined7
  Scenario: Predefined steps for Searchencrypt
    Given I open url "https://www.searchencrypt.com"
    Then I should see page title as "Search Encrypt | Home"
    Then element with xpath "//input[@type='text']" should be present
    When I type "Behavior Driven Development" into element with xpath "//input[@type='text']"
    And I click on element with xpath "//button[@type='submit']"
    Then I wait for element with xpath "//*[@class='serp__results container']" to be present
    Then I wait for 10 sec
    Then element with xpath "//*[@class='serp__results container']" should contain text "Cucumber"


  @predefined8
  Scenario: Predefined steps for Startpage
    Given I open url "https://www.startpage.com"
    Then I should see page title as "Startpage.com - The world's most private search engine"
    Then element with xpath "//input[@id='q']" should be present
    When I type "Behavior Driven Development" into element with xpath "//input[@id='q']"
    And I click on element with xpath "//*[@id='search']/button"
    Then I wait for element with xpath "//*[@class='w-gl w-gl--default']" to be present
    Then I wait for 5 sec
    Then element with xpath "//*[@class='w-gl w-gl--default']" should contain text "Cucumber"


  @predefined9
  Scenario: Predefined steps for Yandex
    Given I open url "https://www.yandex.com"
    Then I should see page title as "Yandex"
    Then element with xpath "//input[@id='text']" should be present
    When I type "Behavior Driven Development" into element with xpath "//input[@id='text']"
    And I click on element with xpath "//div[@class='search2__button']"
    Then I wait for element with xpath "//div//*[@id='search-result']" to be present
    Then element with xpath "//div//*[@id='search-result']" should contain text "Cucumber"


  @predefined10
  Scenario: Predefined steps for Boardreader
    Given I open url "http://boardreader.com/"
    Then I should see page title as "Boardreader - Forum Search Engine"
    Then element with xpath "//input[@id='title-query']" should be present
    When I type "Behavior Driven Development" into element with xpath "//input[@id='title-query']"
    And I wait for 3 sec
    Then element with xpath "//div[@id='form-holder']" should contain text "Cucumber"


  @predefined11
  Scenario: Predefined steps for Ecosia
    Given I open url "https://www.ecosia.org"
    Then I should see page title as "Ecosia - the search engine that plants trees"
    Then element with xpath "//input[@name='q']" should be present
    When I type "Behavior Driven Development" into element with xpath "//input[@name='q']"
    And I click on element with xpath "//button[@type='submit']"
    Then I wait for element with xpath "//*[@class='mainline-results']" to be present
    Then element with xpath "//*[@class='mainline-results']" should contain text "Cucumber"


  @predefined12
  Scenario: Responsive UI
    Given I open url "https://skryabin.com/market/quote.html"
    And I resize window to 1280 and 1024
    Then element with xpath "//b[@id='location']" should be displayed
    And I resize window to 800 and 1024
    Then element with xpath "//b[@id='location']" should be displayed
    And I resize window to 400 and 1024
    Then element with xpath "//b[@id='location']" should not be displayed


  @predefined13
  Scenario: Min length
    Given I open url "https://skryabin.com/market/quote.html"
    When I type "a" into element with xpath "//input[@name='username']"
    And I click on element with xpath "//button[@id='formSubmit']"
    Then element with xpath "//*[@id='username-error']" should be displayed
    And I clear element with xpath "//input[@name='username']"
    When I type "ab" into element with xpath "//input[@name='username']"
    Then element with xpath "//*[@id='username-error']" should not be displayed


  @predefined14
# Precondition: Valid email format is "*@*"
  Scenario: Test Case 3: Email validation
    Given I open url "https://skryabin.com/market/quote.html"
    When I type "a" into element with xpath "//input[@name='email']"
    And I click on element with xpath "//button[@id='formSubmit']"
    Then element with xpath "//*[@id='email-error']" should be displayed

    When I type "@" into element with xpath "//input[@name='email']"
    And I click on element with xpath "//button[@id='formSubmit']"
    Then element with xpath "//*[@id='email-error']" should be displayed

    When I type "a" into element with xpath "//input[@name='email']"
    And I click on element with xpath "//button[@id='formSubmit']"
    Then element with xpath "//*[@id='email-error']" should not be displayed

    And I clear element with xpath "//input[@name='email']"
    When I type "@" into element with xpath "//input[@name='email']"
    And I click on element with xpath "//button[@id='formSubmit']"
    Then element with xpath "//*[@id='username-error']" should be displayed

    When I type "a" into element with xpath "//input[@name='email']"
    And I click on element with xpath "//button[@id='formSubmit']"
    Then element with xpath "//*[@id='username-error']" should be displayed

    And I clear element with xpath "//input[@name='email']"
    When I type "a@" into element with xpath "//input[@name='email']"
    And I click on element with xpath "//button[@id='formSubmit']"
    Then element with xpath "//*[@id='username-error']" should be displayed

    When I type "a" into element with xpath "//input[@name='email']"
    And I click on element with xpath "//button[@id='formSubmit']"
    Then element with xpath "//*[@id='email-error']" should not be displayed

    And I clear element with xpath "//input[@name='email']"
    When I type "@@" into element with xpath "//input[@name='email']"
    And I click on element with xpath "//button[@id='formSubmit']"
    Then element with xpath "//*[@id='username-error']" should be displayed

    And I clear element with xpath "//input[@name='email']"
    When I type "a@@a" into element with xpath "//input[@name='email']"
    And I click on element with xpath "//button[@id='formSubmit']"
    Then element with xpath "//*[@id='username-error']" should be displayed

# Below are extra steps for invalid characters. Invalid chars: ()[]\,

    And I clear element with xpath "//input[@name='email']"
    When I type "a(@a" into element with xpath "//input[@name='email']"
    And I click on element with xpath "//button[@id='formSubmit']"
    Then element with xpath "//*[@id='username-error']" should be displayed

    And I clear element with xpath "//input[@name='email']"
    When I type "a)@a" into element with xpath "//input[@name='email']"
    And I click on element with xpath "//button[@id='formSubmit']"
    Then element with xpath "//*[@id='username-error']" should be displayed

    And I clear element with xpath "//input[@name='email']"
    When I type "a[@a" into element with xpath "//input[@name='email']"
    And I click on element with xpath "//button[@id='formSubmit']"
    Then element with xpath "//*[@id='username-error']" should be displayed

    And I clear element with xpath "//input[@name='email']"
    When I type "a]@a" into element with xpath "//input[@name='email']"
    And I click on element with xpath "//button[@id='formSubmit']"
    Then element with xpath "//*[@id='username-error']" should be displayed

    And I clear element with xpath "//input[@name='email']"
    When I type "a\@a" into element with xpath "//input[@name='email']"
    And I click on element with xpath "//button[@id='formSubmit']"
    Then element with xpath "//*[@id='username-error']" should be displayed

    And I clear element with xpath "//input[@name='email']"
    When I type "a,@a" into element with xpath "//input[@name='email']"
    And I click on element with xpath "//button[@id='formSubmit']"
    Then element with xpath "//*[@id='username-error']" should be displayed


  @predefined15
  Scenario: Test Case 4: Password fields
    Given I open url "https://skryabin.com/market/quote.html"
    And I type "a" into element with xpath "//input[@id='password']"
    Then element with xpath "//input[@id='confirmPassword']" should be enabled
    Then I clear element with xpath "//input[@id='password']"
    And I click on element with xpath "//input[@id='confirmPassword']"
    Then element with xpath "//input[@id='confirmPassword']" should be disabled


  @predefined16
  Scenario: Test Case 5: "Name" field: dialog 
    Given I open url "https://skryabin.com/market/quote.html"
    And I click on element with xpath "//input[@id='name']"
    Then element with xpath "//div[@role='dialog']" should be present


  @predefined17
  Scenario: Test Case 5: "Name" field: Name concatenation
    Given I open url "https://skryabin.com/market/quote.html"
    And I click on element with xpath "//input[@id='name']"
    And I type "Mark" into element with xpath "//input[@id='firstName']"
    And I type "Byron" into element with xpath "//input[@id='lastName']"
    And I click on element with xpath "//*[text()='Save']"
    Then element with xpath "//input[@id='name']" should have attribute "value" as "Mark Byron"

    And I click on element with xpath "//input[@id='name']"
    And I type "Mark" into element with xpath "//input[@id='firstName']"
    And I type "L" into element with xpath "//input[@id='middleName']"
    And I click on element with xpath "//*[text()='Save']"
    Then element with xpath "//input[@id='name']" should have attribute "value" as "Mark L"

    And I click on element with xpath "//input[@id='name']"
    And I type "L" into element with xpath "//input[@id='middleName']"
    And I type "Byron" into element with xpath "//input[@id='lastName']"
    And I click on element with xpath "//*[text()='Save']"
    Then element with xpath "//input[@id='name']" should have attribute "value" as "L Byron"

    And I click on element with xpath "//input[@id='name']"
    And I type "Mark" into element with xpath "//input[@id='firstName']"
    And I type "L" into element with xpath "//input[@id='middleName']"
    And I type "Byron" into element with xpath "//input[@id='lastName']"
    And I click on element with xpath "//*[text()='Save']"
    Then element with xpath "//input[@id='name']" should have attribute "value" as "Mark L Byron"


  @predefined18
  Scenario: Test Case 6: 'Privacy Policy' check-box
    Given I open url "https://skryabin.com/market/quote.html"
    And I click on element with xpath "//button[@id='formSubmit']"
    Then element with xpath "//label[@id='agreedToPrivacyPolicy-error']" should have text as "- Must check!"
    And I click on element with xpath "//input[@name='agreedToPrivacyPolicy']"
    Then element with xpath "//label[@id='agreedToPrivacyPolicy-error']" should not have text as "- Must check!"


  @predefined18
  # Test run on 08/05/2020, 2:20 am MDT
  Scenario: Test Case 8: Submit form and verify required data is accurate and password is hidden
    Given I open url "https://skryabin.com/market/quote.html"
    When I type "Marko" into element with xpath "//input[@name='username']"
    And I type "mark@test.com" into element with xpath "//input[@name='email']"
    And I type "12345" into element with xpath "//input[@name='password']"
    And I type "12345" into element with xpath "//input[@name='confirmPassword']"
    And I click on element with xpath "//input[@id='name']"
    And I type "Mark" into element with xpath "//input[@id='firstName']"
    And I type "L" into element with xpath "//input[@id='middleName']"
    And I type "Byron" into element with xpath "//input[@id='lastName']"
    And I click on element with xpath "//*[text()='Save']"
    And I click on element with xpath "//input[@name='agreedToPrivacyPolicy']"
    And I click on element with xpath "//button[@id='formSubmit']"
    Then element with xpath "//div[@id='quotePageResult']" should be displayed
    And element with xpath "//b[@name='username']" should have text as "Marko"
    And element with xpath "//b[@name='email']" should have text as "mark@test.com"
    And element with xpath "//b[@name='password']" should have text as "[entered]"
    And element with xpath "//b[@name='firstName']" should have text as "Mark"
    And element with xpath "//b[@name='agreedToPrivacyPolicy']" should have text as "true"
    And element with xpath "//b[@name='location']" should have text as "Los Altos, CA 94022"
    And element with xpath "//b[@name='currentDate']" should have text as "08/05/2020"
    And element with xpath "//b[@name='currentTime']" should have text as "2:20 am Mountain Daylight Time"
    And element with xpath "//b[@name='middleName']" should have text as "L"
    And element with xpath "//b[@name='lastName']" should have text as "Byron"


  @predefined19
  Scenario: Test Case 8: Extra: Submit form and verify optional data is accurate
    Given I open url "https://skryabin.com/market/quote.html"
    When I type "Marko" into element with xpath "//input[@name='username']"
    And I type "mark@test.com" into element with xpath "//input[@name='email']"
    And I type "12345" into element with xpath "//input[@name='password']"
    And I type "12345" into element with xpath "//input[@name='confirmPassword']"
    And I click on element with xpath "//input[@id='name']"
    And I type "Mark" into element with xpath "//input[@id='firstName']"
    And I type "L" into element with xpath "//input[@id='middleName']"
    And I type "Byron" into element with xpath "//input[@id='lastName']"
    And I click on element with xpath "//*[text()='Save']"
    And I click on element with xpath "//input[@name='agreedToPrivacyPolicy']"

    And I type "3031234567" into element with xpath "//input[@name='phone']"
    And I click on element with xpath "//select[@name='countryOfOrigin']/option[@value='USA']"
    And I click on element with xpath "//*[@class='checkbox_radio']/input[@value='male']"
    And I click on element with xpath "//input[@name='allowedToContact']"
    And I type "123 Main St." into element with xpath "//*[@id='address']"
    And I click on element with xpath "//select[@name='carMake']/option[text()='Toyota']"
    And I click on element with xpath "//button[@id='thirdPartyButton']"
    And I accept alert
    And I click on element with xpath "//input[@id='dateOfBirth']"
    And I click on element with xpath "//select[@class='ui-datepicker-month']/option[@value='4']"
    And I click on element with xpath "//select[@class='ui-datepicker-year']/option[@value='1990']"
    And I click on element with xpath "//table[@class='ui-datepicker-calendar']//*[text()='10']"
    And I click on element with xpath "//button[@id='formSubmit']"
    And element with xpath "//b[@name='phone']" should have text as "3031234567"
    And element with xpath "//b[@name='countryOfOrigin']" should have text as "USA"
    And element with xpath "//b[@name='gender']" should have text as "male"
    And element with xpath "//b[@name='allowedToContact']" should have text as "true"
    And element with xpath "//b[@name='address']" should have text as "123 Main St."
    And element with xpath "//b[@name='carMake']" should have text as "Toyota"
    And element with xpath "//b[@name='dateOfBirth']" should have text as "05/10/1990"