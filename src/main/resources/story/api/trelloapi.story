Scenario: New Trello board creation
Given request body: {
"name": "viktoryia's board"
}
When I issue a HTTP POST request for a resource with the URL 'https://api.trello.com/1/boards/?name=viktoriya's board&key=60531d23c30623705e04812cdb38a263&token='
Then the response code is equal to '200'

