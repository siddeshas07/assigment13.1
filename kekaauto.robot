* Settings *
Documentation     Testing on FLIPKART
Library           SeleniumLibrary


* Variables *
${URL}      https://flipkart.com
${BROWSER}        ff

* Test Cases *
Valid Test
    Open Browser To flipkart
    Input username    7975869561
    Input password    DURKj4bTvdkLwgK
    Login
    Press electronics & add to cart
    [Teardown]    Close Browser


*** Keywords ***
Open Browser To flipkart
    Open Browser    ${URL}    ${BROWSER}


Input username
    [Arguments]    ${username}
    Input Text  //html/body/div[2]/div/div/div/div/div[2]/div/form/div[1]/input     ${username}

Input password
    [Arguments]    ${password}
    Input Text  //html/body/div[2]/div/div/div/div/div[2]/div/form/div[2]/input    ${password}

Login
    Click Button    //html/body/div[2]/div/div/div/div/div[2]/div/form/div[4]/button
    Sleep  3s


Press electronics & add to cart

    Click Image    //*[@id="container"]/div/div[2]/div/div/div[3]/a/div[1]/div/img
    Sleep   3s
    Click Image    //img[@alt='iPhone']
    Sleep   3s
    Click Image    //img[@alt='APPLE iPhone 12 (Blue, 128 GB)']
    Sleep   3s
     #Switch Window   NEW
    Select Window   Buy Apple iPhone 12 ( 128 GB Storage ) Online at Best Price On Flipkart.com
    Click Button   //button[normalize-space()='ADD TO CART']
    sleep  3s
    Click Image    //img[@title='Flipkart']
    Sleep   3s
    click element    //span[normalize-space()='Cart']
    ${cart}   Get Text    //a[normalize-space()='APPLE iPhone 12 (Blue, 128 GB)']
