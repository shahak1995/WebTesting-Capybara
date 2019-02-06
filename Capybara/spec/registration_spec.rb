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
      sleep 5

    end 
  end
end 