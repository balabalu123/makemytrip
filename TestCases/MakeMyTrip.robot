****** settings ***
Library     SeleniumLibrary


****** variables ***
${browser}           chrome
${url}               https://www.makemytrip.com/
${from}              Chennai,Tamil Nadu
${to}                Mumbai,Maharashtra
${traveller_name}    Bala
${traveller_age}     26
${email_id}          bala1234@gmail.com
${mobile_no}         9710685287




****** test cases ***

Trip Book
    open browser        ${url}   ${browser}
    maximize browser window
    Bus Booking


****** keywords ***
Bus Booking
    click element   xpath://div[@class='landingContainer eng']
    click element   xpath://*[@id='SW']/div[1]/div[2]/div/div/nav/ul/li[6]/div/a/span[2]
    sleep  3
    click element   xpath://span[@data-cy='fromCity']
    Input Text      xpath://input[@placeholder='From']    ${from}
    click element   xpath:(//span[text()='Chennai, Tamil Nadu'])[1]
    sleep  3
    click element   xpath://input[@placeholder='To']
    Input Text      xpath://input[@placeholder='To']      ${to}
    click element   xpath://span[text()='Mumbai, Maharashtra']
    click element   xpath://div[@class='dayPickerHeader dayToFromCont blackText']
    click element   xpath://div[@aria-label='Thu Jan 05 2023']
    click element   id:search_button
    click element   xpath://img[@class='primoCloseIcon']
    click element   xpath://span[text()='Sleeper']
    click element   xpath://span[text()='Maduravoyal']
    click element   xpath:(//a[text()='Select Seats'])[1]
    sleep  2
    click element   xpath:(//img[@ class='seat-icon'])[12]
    sleep  5
    click element   xpath://span[text()='BOOK SEATS']
    sleep  5
    Input Text      id:fname    ${traveller_name}
    Input Text      id:age      ${traveller_age}
    sleep  2
    Mouse Over      xpath://span[@class='blackArrowIcon sprite appendLeft10 ']
    Mouse Down      xpath://li[@class=' removeOutline']/preceding-sibling::li
    click element   xpath://li[@class=' removeOutline']/preceding-sibling::li
    sleep  2
    Input Text      id:contactEmail     ${email_id}
    Input Text      id:mobileNumber     ${mobile_no}
    click element   xpath://span[text()='Yes, secure my trip. I agree to the']
    Sleep  2
    click element   xpath://span[text()='Continue to Book Now']
    sleep  12

































