Scenario: Sign in as existing user
Given I am on a page with the URL 'https://www.imdb.com/'
When I wait until element located `By.xpath(//div[contains(text(),'Sign In')])` appears
When I click on element located `By.xpath(//div[contains(text(),'Sign In')])`
Then the text 'Sign in with IMDb' exists
When I click on element located `By.xpath(//span[normalize-space()='Sign in with IMDb'])`
When I wait until element located `By.xpath(//h1[normalize-space()='Sign-In'])` appears
When I enter `${email}` in field located `By.xpath(//input[@id='ap_email'])`
When I enter `${password}` in field located `By.xpath(//input[@id='ap_password'])`
When I click on element located `By.xpath(//input[@id='signInSubmit'])`

Scenario: Search for movie by search box
Given I am on a page with the URL 'https://www.imdb.com/'
When I enter `${filmname}` in field located `By.xpath(//input[@id='suggestion-search'])`
When I click on element located `By.xpath(//button[@id='suggestion-search-button']//*[local-name()='svg'])`
Then the text 'Results for' exists

Scenario: Opening page for one of the found products
Given I am on a page with the URL 'https://www.imdb.com/'
When I enter `${filmname}` in field located `By.xpath(//input[@id='suggestion-search'])`
When I click on element located `By.xpath(//button[@id='suggestion-search-button']//*[local-name()='svg'])`
When I click on element located `By.xpath(//a[normalize-space()='Birdman or (The Unexpected Virtue of Ignorance)'])`
Then the text 'A washed-up superhero actor attempts to revive his fading career by writing, directing, and starring in a Broadway production.' exists

Scenario: Adding movie to Watchlist
Given I am on a page with the URL 'https://www.imdb.com/'
When I enter `${filmname}` in field located `By.xpath(//input[@id='suggestion-search'])`
When I click on element located `By.xpath(//button[@id='suggestion-search-button']//*[local-name()='svg'])`
When I click on element located `By.xpath(//a[normalize-space()='Birdman or (The Unexpected Virtue of Ignorance)'])`
Then the text 'Add to Watchlist' exists
When I click on element located `By.xpath(//div[@class='ipc-btn__text'])`
Then the text 'In Watchlist' exists

Scenario: Navigation to Your Watchlist
Given I am on a page with the URL 'https://www.imdb.com/'
When I wait until element located `By.xpath(//span[@class='imdb-header__account-toggle--logged-in imdb-header__accountmenu-toggle navbar__user-name navbar__user-menu-toggle__name navbar__user-menu-toggle--desktop'])` appears
When I click on element located `By.xpath(//span[@class='imdb-header__account-toggle--logged-in imdb-header__accountmenu-toggle navbar__user-name navbar__user-menu-toggle__name navbar__user-menu-toggle--desktop'])`
When I click on element located `By.xpath(//span[normalize-space()='Your watchlist'])`
Then the text 'Your Watchlist' exists

Scenario: Sorting list from Your Watchlist and exporting it
Given I am on a page with the URL 'https://www.imdb.com/'
When I click on element located `By.xpath(//span[@class='imdb-header__account-toggle--logged-in imdb-header__accountmenu-toggle navbar__user-name navbar__user-menu-toggle__name navbar__user-menu-toggle--desktop'])`
When I click on element located `By.xpath(//span[normalize-space()='Your watchlist'])`
Then the text 'Your Watchlist' exists
When I click on element located `By.xpath(//span[@class='lister-widget-sprite lister-sort ascending'])`
When I click on element located `By.xpath(//a[normalize-space()='Export this list'])`

Scenario: Deletion movie to Watchlist
Given I am on a page with the URL 'https://www.imdb.com/'
When I click on element located `By.xpath(//div[@class='NavWatchlistButton-sc-1b65w5j-0 dAMWXo imdb-header__watchlist-button']//div[1])`
When I click on element located `By.xpath(//a[normalize-space()='Birdman or (The Unexpected Virtue of Ignorance)'])`
Then the text 'In Watchlist' exists
When I click on element located `By.xpath(//div[@class='ipc-btn__text'])`
Then the text 'Add to Watchlist' exists