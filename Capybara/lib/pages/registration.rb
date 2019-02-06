require 'capybara/dsl'

class Registration
  include Capybara::DSL 

  # page objects
  REGISTRATION_PAGE_URL = 'http://localhost:9292/'
  FIRST_NAME_FIELD_ID = 'firstName'
  LAST_NAME_FIELD_ID = 'lastName'
  AGE_FIELD_XPATH = '/html/body/div/form/div[3]/div/input'
  DATE_FIELD_XPATH = '/html/body/div/form/div[4]/div/input'
  GENDER_MALE_BUTTON = '/html/body/div/form/div[5]/label'
  GENDER_FEMALE_BUTTON = '/html/body/div/form/div[6]/label'
  DEGREE_FIELD_XPATH = '/html/body/div/form/div[7]/div/input'
  UNIVERSITY_FIELD_ID = 'inputUni'
  ADDRESS_FIELD_ID = 'inputAddress'

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
    find(:xpath, GENDER_MALE_BUTTON).click
  end 

  def click_on_female_button
    find(:xpath, GENDER_FEMALE_BUTTON).click
  end 

  def fill_in_degree_field(degree)
    find(:xpath, DEGREE_FIELD_XPATH).set("#{degree}")
  end 

  def choose_university_field
    select('option', :from => 'University of Oxford')
  end 

  def fill_in_first_address_field(addressone)
    fill_in(ADDRESS_FIELD_ID, :with => addressone)
  end 
end