class UserMailer < ApplicationMailer
  default from: 'tlweitzman@gmail.com'

  def welcome_email(allowed_user_viewer)
    @allowed_user_viewer = allowed_user_viewer
    @url = 'https://purple-family.herokuapp.com/users/sign_up'
    mail(to: @allowed_user_viewer.user_email, subject: 'Invitation to Purple Family Project')
  end
end
