*** Settings ***

Library                      ExtendedSelenium2Library
Resource                     base.robot

*** Variables ***

${DD_MORE}                   id=menu_news_More
${DD_ASSETS}                 id=menu_asset_viewUserAssetList
${LNK_BRANDS}                id=menu_asset_viewBrands
${LNK_VENDORS}               id=menu_asset_viewVendorList

*** Keywords ***

Navigate to Brands
    [Documentation]          Navigate to Brands in more menu.
    Navigate to:             ${DD_MORE}  ${DD_ASSETS}  ${LNK_BRANDS}

Navigate to Vendors
    [Documentation]         Navigate to Vendors in more menu.
    Navigate to:             ${DD_MORE}  ${DD_ASSETS}  ${LNK_VENDORS}