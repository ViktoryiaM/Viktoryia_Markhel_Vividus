Scenario: Sign In to trello via UI as existing user
Given I am on a page with the URL 'https://trello.com/'
When I click on element located `By.xpath(//a[@class='btn btn-sm btn-link text-primary'])`
When I wait until element located `By.xpath(//input[@id='user'])` appears
When I enter `${email}` in field located `By.xpath(//input[@id='user'])`
When I click on element located `By.xpath(//input[@id='login'])`
When I wait until element located `By.xpath(//input[@id='password'])` appears
When I enter `${password}` in field located `By.xpath(//input[@id='password'])`
When I click on element located `By.xpath(//button[@id='login-submit']//span[@class='css-19r5em7'])`
When I wait until element located `By.xpath(//h2[normalize-space()='Most popular templates'])` appears
Then the text 'Most popular templates' exists

Scenario: Checking User Profile
Given I am on a page with the URL 'https://trello.com/'
When I wait until element located `By.xpath(//span[@title='Viktoryia (viktoryia56)'])` appears
When I click on element located `By.xpath(//span[@title='Viktoryia (viktoryia56)'])`
When I wait until element located `By.xpath(//span[normalize-space()='Profile and visibility'])` appears
When I click on element located `By.xpath(//span[normalize-space()='Profile and visibility'])`
When I wait until element located `By.xpath(//h1[@class='_1gFIM6I433HGiA'])` appears
Then the text 'Manage your personal information' exists

Scenario: Navigation to the 'Members' page
Given I am on a page with the URL 'https://trello.com/'
When I click on element located `By.xpath(//span[@class='_13fwAio4RLr1IF _1n_XZaC3nVFH_x'][normalize-space()='Members'])`
When I wait until element located `By.xpath(//h1//span[contains(text(),'Workspace members')])` appears
Then the text 'Workspace members (1)' exists

Scenario: Navigate to Boards if it exists
Given I am on a page with the URL 'https://trello.com/'
When I find = `1` elements by `By.xpath(//a[@data-test-id='home-team-boards-tab'])` and for each element do 
|step|
|When I click on element located `By.xpath(//a[@data-test-id='home-team-boards-tab'])`|
When I wait until element located `By.xpath(//h3[text()='Workspace boards'])` appears
Then the text 'Workspace boards' exists


