class UsersController < ApplicationController
  # def create
  #   @user = User.new(params[:user])
  #
  #   respond_to do |format|
  #     if @user.save
  #       binding.pry
  #       UserMailer.welcome_email(@user).deliver_later
  #       format.html { redirect_to (@user, notice: 'Successfully created profile') }
  #       format.json { render json: @user, status: :created, location: @user }
  #     else
  #       format.html {render action: 'new' }
  #       format.json { render json: @user.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end
end
