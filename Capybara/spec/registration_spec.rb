require 'spec_helper'

describe 'testing a correct path for sparta registration' do
  context 'it should respond with confirmation on successful completion' do
    it 'should show correct confirmation on completion' do

      @sparta_demo_site = SpartaDemoSite.new
      @sparta_demo_site.registration_page.visit_registration_page
      @sparta_demo_site.registration_page.fill_in_first_name_field('shah')
      @sparta_demo_site.registration_page.fill_in_last_name_field('khan')
      @sparta_demo_site.registration_page.fill_in_age_field('23')
      @sparta_demo_site.registration_page.fill_in_date_field('06/02/2019')
      @sparta_demo_site.registration_page.click_on_male_button
      @sparta_demo_site.registration_page.click_on_female_button
      @sparta_demo_site.registration_page.fill_in_degree_field('Maths')
      @sparta_demo_site.registration_page.choose_university_dropdown('University of Oxford')
      @sparta_demo_site.registration_page.fill_in_first_address_field('12 downham road')
      @sparta_demo_site.registration_page.fill_in_second_address_field('cranston estate')
      @sparta_demo_site.registration_page.fill_in_city_field('london')
      @sparta_demo_site.registration_page.choose_county_dropdown('Hertfordshire')
      @sparta_demo_site.registration_page.fill_in_postcode_field('n1 6td')
      @sparta_demo_site.registration_page.fill_in_email_address_field('shak-attak@hotmail.com')
      @sparta_demo_site.registration_page.fill_in_skills_field('ndjandkandkabdkhjbaskdhbakd')
      @sparta_demo_site.registration_page.fill_in_phone_number_field('07714265357')
      @sparta_demo_site.registration_page.fill_in_linkedin_field('http://www.linkedin.com')
      @sparta_demo_site.registration_page.click_on_choose_file_button
      @sparta_demo_site.registration_page.click_on_sdet_button
      @sparta_demo_site.registration_page.click_on_devops_button
      sleep 5

    end 
  end
end 