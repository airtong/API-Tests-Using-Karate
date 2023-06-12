Feature: Testing The Rick and Morty API

Background:
    * def url_base = 'https://rickandmortyapi.com/api'

Scenario: Testing the character Rick Sanchez return and matching its name and origin
    Given url url_base
    And path 'character/1'
    When method get
    Then status 200
    And match response.name == 'Rick Sanchez'
    And match response.origin.name == 'Earth (C-137)'

Scenario: Testing the counting of alive humans in the series
    Given url url_base
    And path 'character/?status=alive&species=Human'
    When method get
    Then status 200
    And match response.info.count == 245

Scenario: Testing if the character 400 (Giant Judge) is in the episode 5 (the only one that he appears)
    Given url url_base
    And path 'episode/5'
    When method get
    Then status 200
    And match response.characters contains 'https://rickandmortyapi.com/api/character/400'

Scenario: Testing the negative return for character 850
    Given url url_base
    And path 'character/850'
    When method get
    Then status 404
    And match response.error == 'Character not found'

Scenario: Test the location 21 return, its type and if Abradolf Lincler is its first resident
    Given url url_base
    And path 'location/21'
    When method get
    Then status 200
    And response.type = 'Dimension'
    And def residentUrl = response.residents[0]

    Given url residentUrl
    When method get
    Then status 200
    And def residentName = response.name

    Then match residentName == 'Abradolf Lincler'

Scenario: Test the negative location return using the filters dimension 'Dimension C-137' and type 'Game'
    Given url url_base
    And path 'location/?dimension=Dimension%20C-137&type=game'
    When method get
    Then status 404
    And match response.error == 'There is nothing here'

