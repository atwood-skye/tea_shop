require 'rails_helper'

describe "deleting a tea" do
  it "will delete a tea from the database" do
    tea = Tea.create(:name => 'Earl Grey', :cost => 4, :country => "China")
    visit tea_path(tea)
    click_link "Delete"
    expect(page).to have_content 'Teas'
  end
end
