require 'capybara/dsl'

class Registration
  include Capybara::DSL 

  # page objects
  REGISTRATION_PAGE_URL = 'http://localhost:9292/'
  FIRST_NAME_FIELD_ID = 'firstName'
  LAST_NAME_FIELD_ID = 'lastName'
  AGE_FIELD_XPATH = '/html/body/div/form/div[3]/div/input'
  DATE_FIELD_XPATH = '/html/body/div/form/div[4]/div/input'
  MALE_BUTTON_XPATH = '/html/body/div/form/div[5]/label'
  FEMALE_BUTTON_XPATH = '/html/body/div/form/div[6]/label'
  DEGREE_FIELD_XPATH = '/html/body/div/form/div[7]/div/input'
  UNIVERSITY_DROPDOWN_ID = 'inputUni'
  ADDRESS_FIELD_ID = 'inputAddress'
  ADDRESS_TWO_FIELD_ID = 'inputAddress2'
  CITY_FIELD_ID = 'inputCity'
  COUNTY_DROPDOWN_ID = 'inputCounty'
  POSTCODE_FIELD_ID = 'inputPostcode'
  EMAIL_ADDRESS_FIELD_ID = 'inputemailaddress'
  SKILLS_FIELD_ID = 'exampleFormControlTextarea1'
  PHONE_NUMBER_FIELD_ID = 'exampleFormControlInput1'
  LINKEDIN_FIELD_XPATH = '/html/body/div/form/div[17]/div/input'
  CHOOSE_FILE_BUTTON_XPATH = '/html/body/div/form/div[18]/div/input'
  SDET_BUTTON_XPATH = '/html/body/div/form/div[20]/div[1]/label'
  DEVOPS_BUTTON_XPATH = '/html/body/div/form/div[20]/div[2]/label'
  TERMS_CHECKBOX_ID = 'terms'
  EXPERIENCE_SLIDER_XPATH = '//*[@id="experienceSlider"]'
  SIGN_IN_BUTTON_XPATH = '/html/body/div/form/button'

  def visit_registration_page
    visit(REGISTRATION_PAGE_URL)
  end

  def fill_in_first_name_field(name)
    fill_in(FIRST_NAME_FIELD_ID, :with => name)
  end 

  def fill_in_last_name_field(name)
    fill_in(LAST_NAME_FIELD_ID, :with => name)
  end 

  def fill_in_age_field(age)
    find(:xpath, AGE_FIELD_XPATH).set("#{age}")
  end 

  def fill_in_date_field(date)
    find(:xpath, DATE_FIELD_XPATH).set("#{date}")
  end 

  def click_on_male_button
    find(:xpath, MALE_BUTTON_XPATH).click
  end 

  def click_on_female_button
    find(:xpath, FEMALE_BUTTON_XPATH).click
  end 

  def fill_in_degree_field(degree)
    find(:xpath, DEGREE_FIELD_XPATH).set("#{degree}")
  end 

  def choose_university_dropdown(university)
    select university, :from => UNIVERSITY_DROPDOWN_ID
  end 

  def fill_in_first_address_field(addressone)
    fill_in(ADDRESS_FIELD_ID, :with => addressone)
  end 

  def fill_in_second_address_field(addresstwo)
    fill_in(ADDRESS_TWO_FIELD_ID, :with => addresstwo)
  end 

  def fill_in_city_field(city)
    fill_in(CITY_FIELD_ID, :with => city)
  end 

  def choose_county_dropdown(county)
    select county, :from => COUNTY_DROPDOWN_ID
  end 

  def fill_in_postcode_field(postcode)
    fill_in(POSTCODE_FIELD_ID, :with => postcode)
  end 

  def fill_in_email_address_field(email)
    fill_in(EMAIL_ADDRESS_FIELD_ID, :with => email)
  end 

  def fill_in_skills_field(skills)
    fill_in(SKILLS_FIELD_ID, :with => skills)
  end 

  def fill_in_phone_number_field(number)
    fill_in(PHONE_NUMBER_FIELD_ID, :with => number)
  end 

  def fill_in_linkedin_field(url)
    find(:xpath, LINKEDIN_FIELD_XPATH).set("#{url}")
  end 

  def click_on_choose_file_button
    find(:xpath, CHOOSE_FILE_BUTTON_XPATH).click
  end

  def click_on_sdet_button
    find(:xpath, SDET_BUTTON_XPATH).click
  end 

  def click_on_devops_button
    find(:xpath, DEVOPS_BUTTON_XPATH).click
  end 

  def click_on_terms_checkbox
    find(:id, TERMS_CHECKBOX_ID).check
  end 

  def change_experience_slider_value
    find(:xpath, EXPERIENCE_SLIDER_XPATH).set
  end 

  def click_on_sign_in_button
    find(:xpath, SIGN_IN_BUTTON_XPATH).click
  end 
end