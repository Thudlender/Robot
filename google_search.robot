*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${BROWSER}    Chrome
${SEARCH_TERM}    robot framework
${SEARCH_RESULT}    robot framework
${SEARCH_RESULT-2}    robot framework
${SEARCH_RESULT-3}    robot framework

*** Test Cases ***
Search Google and Verify Results
    [Documentation]    Test case to search Google and verify results
    Open Google
    Input Search Term
    Press Enter Google Search
    Verify Search Results
    Close Browser

Search Google and Verify Results-2
    
    
*** Keywords ***
Open Google
    Open Browser    https://www.google.com    ${BROWSER}

Open Yahoo
    Open Browser    https://www.yahoo.com     ${BROWSER}    

Input Search Term
    Input Text      name=q                 ${SEARCH_TERM}

Press Enter Google Search
    Press Keys   name=q    ENTER

Verify Search Results
    Wait Until Page Contains    ${SEARCH_RESULT}
    Page Should Contain    ${SEARCH_RESULT}
