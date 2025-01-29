#*** Settings ***
#Variables   ../Variables/Variables.py
#Resource    Loginpage_Keywords.robot
*** Keywords ***
Click SIDEMENU2
    Wait Until Page Contains Element        ${SIDE_MENU}
    Element Should Be Visible       ${SIDE_MENU}
    Click Element       ${SIDE_MENU}
    Sleep   3s

Click HandWritten OCR
    Wait Until Page Contains Element    ${HANDWRITTEN_OCR_BOX}
    Element Should Be Visible       ${HANDWRITTEN_OCR_BOX}
    Sleep   1s
    Wait Until Page Contains Element    ${HANDWRITTEN_OCR_BOX_LOGO}
    Element Should Be Visible       ${HANDWRITTEN_OCR_BOX_LOGO}
    Sleep   1s
    Click Element   ${HANDWRITTEN_OCR_BOX}
    Wait Until Location Is      ${HANDWRITTEN_OCR_URL}       timeout=5s
    Location Should Be      ${HANDWRITTEN_OCR_URL}
    Sleep   3s
    Click Element    ${SIDE_MENU}
    Sleep   2s
    Click Element    ${SIDE_MENU}
    Sleep   2s

Verify Sub-Page in HandWritten OCR
    Wait Until Page Contains Element    ${SUBPAGE_IN_HANDWRITTEN_OCR_PAGE}
    Element Should Be Visible       ${SUBPAGE_IN_HANDWRITTEN_OCR_PAGE}
    Sleep   1s
    Wait Until Page Contains Element    ${UPLOAD_IMAGE_HEADING_IN_SUBPAGE}
    Element Text Should Be      ${UPLOAD_IMAGE_HEADING_IN_SUBPAGE}      Upload Image
    Sleep   1s
    Wait Until Page Contains Element    ${LATEX_OUTPUT_TEXT_IN_SUBPAGE}
    Element Text Should Be      ${LATEX_OUTPUT_TEXT_IN_SUBPAGE}      Latex output
    Sleep   1s
    Wait Until Page Contains Element    ${RENDERED_OUTPUT_TEXT_IN_SUBPAGE}
    Element Text Should Be      ${RENDERED_OUTPUT_TEXT_IN_SUBPAGE}      Rendered output
    Sleep   1s
    Wait Until Page Contains Element    ${UPLOAD_BUTTON_IN_SUBPAGE}
    Element Should Be Visible      ${UPLOAD_BUTTON_IN_SUBPAGE}
    Sleep   1s
    Click Element    ${UPLOAD_BUTTON_IN_SUBPAGE}
    Sleep   1s
    Wait Until Page Contains Element    ${UPLOADED_IMAGE_TEXT_IN_SUBPAGE}
    Element Text Should Be      ${UPLOADED_IMAGE_TEXT_IN_SUBPAGE}      Uploaded Image
    Sleep   1s
    Wait Until Page Contains Element    ${uploaded_an_image_TEXT_IN_SUBPAGE}
    Element Text Should Be      ${uploaded_an_image_TEXT_IN_SUBPAGE}       Upload an image
    Sleep   1s
    Wait Until Page Contains Element    ${UPLOAD_IMAGE_CONTAINER}
    Element Should Be Visible       ${UPLOAD_IMAGE_CONTAINER}
    Sleep   1s
    Wait Until Page Contains Element    ${UPLOAD_IMAGE_LOGO_IN_CONTAINER}
    Element Should Be Visible       ${UPLOAD_IMAGE_LOGO_IN_CONTAINER}
    Sleep   1s
    Wait Until Page Contains Element    ${TEXT_IN_UPLOAD_IMAGE_CONTAINER}
    Element Text Should Be       ${TEXT_IN_UPLOAD_IMAGE_CONTAINER}      Drag and drop or select an image to upload
    Sleep   1s
    Wait Until Page Contains Element    ${LATEX_OUTPUT_CONTAINER}
    Element Should Be Visible       ${LATEX_OUTPUT_CONTAINER}
    Sleep   1s