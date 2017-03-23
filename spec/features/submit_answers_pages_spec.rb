require 'rails_helper'

describe "user taking survey" do
  it "will allow user to submit answers" do
    user = create(:user)
    question = create(:question)
    visit root_path
    click_on "Log In"
    fill_in "Email", :with => "user@user.com"
    fill_in "Password", :with => "password"
    click_on "Log in"
    click_on "TAKE THE SURVEY"
    page.check "I agree"
    click_on "SUBMIT SURVEY"
    expect(page).to have_content("Your Survey")
  end

end
