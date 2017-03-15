class UserMailer < ApplicationMailer
  default from: 'tlweitzman@gmail.com'

  def welcome_email(user)
    @user = user
    @url = 'https://purple-family.herokuapp.com/users/sign_up'
    mail(to: @user.email, subject: 'Welcome to Purple Family Project')
  end
end
