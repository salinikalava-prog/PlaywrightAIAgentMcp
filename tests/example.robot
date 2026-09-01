*** Settings ***
Library     Browser

*** Test Cases ***
Open Example Website
    [Documentation]    Open Booking.com, decline cookies, dismiss popup, and verify the page loads
    New Browser    headless=false
    New Page    https://www.booking.com
    Decline Cookies If Visible
    Close Popup If Visible
    Wait For Elements State    body    visible    15s
    Get Page Title
    Close Browser

*** Keywords ***
Decline Cookies If Visible
    ${cookie_button}=    Set Variable    xpath=(//button[contains(., 'Decline') or contains(., 'Reject') or contains(., 'I decline') or contains(., 'Only necessary') or contains(., 'Manage options')])[1]
    Run Keyword And Ignore Error    Wait For Elements State    ${cookie_button}    visible    15s
    Run Keyword And Ignore Error    Click    ${cookie_button}

Close Popup If Visible
    ${popup_close}=    Set Variable    xpath=(//button[@aria-label='Close' or @title='Close' or @data-testid='close-button' or @aria-label='Dismiss' or contains(@class, 'close')])[1]
    Run Keyword And Ignore Error    Wait For Elements State    ${popup_close}    visible    10s
    Run Keyword And Ignore Error    Click    ${popup_close}

Get Page Title
    ${title}=    Get Title
    Log    Page title: ${title}
