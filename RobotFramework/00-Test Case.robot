*** Settings ***
Library    SeleniumLibrary
Resource   01-Keywords.robot

*** Test Cases ***
Add_product
    Affichage_Page_accueil
    Search_product
    Add_to_Cart
    Connexion_AsGuest