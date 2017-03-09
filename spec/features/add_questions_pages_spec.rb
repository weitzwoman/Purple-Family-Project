require 'rails_helper'

describe 'how admin creates question' do
  it "creates question" do
    user = create(:user, :is_admin => true)
    visit "/"
    click_on "Log In"
    fill_in "Email", :with => "user@user.com"
    fill_in "Password", :with => "password"
    click_on "Log in"
    visit questions_path
    click_on "Add New Question"
    fill_in "Content", :with => "I like my neighbors"
    click_on "Submit Question"
    expect(page).to have_content("neighbors")
  end

  it "shows errors if question form not filled out" do
    user = create(:user, :is_admin => true)
    login_as(user)
    visit new_question_path
    click_on "Submit Question"
    expect(page).to have_content("blank")
  end

  it "edits the question" do
    user = create(:user, :is_admin => true)
    question = create(:question)
    login_as(user)
    visit edit_question_path(question)
    fill_in "Content", :with => "Health care is a human right"
    click_on "Submit Question"
    expect(page).to have_content("Health")
  end

  it "deletes the question" do
    user = create(:user, :is_admin => true)
    question = create(:question)
    login_as(user)
    visit questions_path
    click_on "Delete"
    expect(page).to_not have_content("democracy")
  end
end
