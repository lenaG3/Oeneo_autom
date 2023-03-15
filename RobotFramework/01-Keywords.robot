*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}    chrome
${URL}        https://www.manomano.fr/
${increment}  ${25}   
${email}      hello${increment}@yopmail.com

*** Keywords ***
Affichage_Page_accueil
    Open Browser  ${URL}    ${browser}
    Maximize Browser Window
    Sleep    2s
    Click Button    id=didomi-notice-agree-button

Search_product 
    Input Text    xpath=//input[@type="search"]    Canapé Velours droit Vert Altamo - 3 Places
    Press Keys    xpath=//input[@type="search"]    ENTER
    Sleep     3s
    Click Element    xpath=//img[@class="bd5Nmd m6MB6P"]
Add_to_Cart
    Sleep     3s
    Execute Javascript    window.scrollTo(0,200)
    Sleep     3s
    Click Element   xpath=//div[@data-testid="AddToCart"]
    Sleep     2s
    Click Element   xpath=//a[@data-testid="go-to-cart-page-cta"]
    Sleep    2s
    Click Button    xpath=//button[@aria-label="close"]
    Sleep    2s
    Click Button    xpath=//button[@data-testid="product-quantity-increment-cta"]
    Sleep    2s
    Click Button    xpath=//button[@data-testid="paybox-main-cta"]
    Sleep    2s
Connexion_AsGuest
    Execute Javascript    window.scrollTo(0,200)
    Sleep    3s
    Click Element   xpath=//a[@class="button tertiary "]
    Sleep    3s
WHILE    ${increment}<100    limit=NONE
         ${increment}=   ${increment+1}
END
    Input Text    xpath=//input[@type="email"]    ${email}
    Sleep     5s
    Click Button    xpath=//button[@data-testid="registerFormSubmitCta"]
    Sleep    5s
    Close Browser
