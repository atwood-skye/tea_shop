require 'rails_helper'

describe "adding a tea" do
  it "adds a new tea" do
    visit '/'
    click_link 'New Tea'
    fill_in 'Name', :with => 'Earl Grey'
    fill_in 'Cost', :with => 4
    fill_in 'Country', :with => 'China'
    click_on 'Create Tea'
    expect(page).to have_content 'Earl Grey'
  end

  it "gives error when no name is entered" do
   visit new_tea_path
   click_on 'Create Tea'
   expect(page).to have_content 'errors'
 end
end
