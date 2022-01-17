Scenario: Sign In using composite step
Given I am on a page with the URL 'https://trello.com/'
When I click on element located `By.xpath(//a[@class='btn btn-sm btn-link text-primary'])`
When I sign in with ${email} and ${password}
When I wait until element located `By.xpath(//h2[normalize-space()='Most popular templates'])` appears
Then the text 'Most popular templates' exists