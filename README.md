# WebTesting-Capybara
### Description
This POM helps to automate tests on a webpage through the use of the capybara gem which is a framework used only for a DSL in order to ease task through shortened functions to web test with the use of the selenium web driver and the chrome driver. Once the url for the webpage has been retrieved, you test the specific fields and enter the value within them to see if it inputs when test run. Once all the test is done, through the use of RSpec, the test are run to see if they have passed or not by automating the values into the specific fields. 

### Languages used
* Ruby

### Tools used
* RSpec
* Chrome Driver
* Selenium WebDriver
* Capybara 

### How to download
1. Open up your preffered web browser
2. Enter this url or simply click on this link: https://github.com/shahak1995/WebTesting-Capybara
3. Click on the green button on the right to clone or download the repo

### How to use
1. Open the folder through a code editor of your choice
2. In the terminal run bundle to install all of your gems which will create a Gemfile.lock file with all of your dependancies 
3. Make sure you enter your URL at the top of the registration.rb file as a page object and declare a constant to it
3. Run RSpec in the terminal to test if you test code have passed or not by typing into the terminal 'rspec'
4. If your test has ran succesfully, then it will say it has passed
5. If your test has didnt run succesfully, then it will say it has failed and show you the error

### Challenges (you can include images and code block here)
1. Testing the dropdowns on the form page
2. Testing the slider to change its value 
3. Knowing which Capybara method to use on certain elements within the form

### Learning points
1. Set up Capybara properly by including the gem and calling the module in the class
2. Make sure the URL is correct in the file to retrieve it whilst testing 
3. Make sure to name the methods right so that it picks the right element on the page and automates the test