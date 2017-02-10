require 'rails_helper'

describe "editing a tea" do
  it "will edit a tea" do
    tea = Tea.create(:name => 'Earl Grey', :cost => 4, :country => "China")
    visit tea_path(tea)
    click_link "Edit Tea"
    fill_in 'Name', :with => 'Chai Roiboos'
    click_on 'Update Tea'
    expect(page).to have_content 'Chai'
  end
end
