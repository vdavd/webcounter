*** Settings ***
Resource  resource.robot
Suite Setup  Open And Configure Browser
Suite Teardown  Close Browser

*** Test Cases ***
When the value is set to 10, the page displays the value correctly
    Go To  ${HOME_URL}
    Title Should Be  Laskuri
    Page Should Contain  nappia painettu 0 kertaa
    Input Text  arvo  10
    Click Button  aseta
    Page Should Contain  nappia painettu 10 kertaa