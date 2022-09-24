class Api::V1::UsersController < ApplicationController
  def create
    user = User.new(email: params[:email], 
      password: params[:password], 
      password_confirmation: params[:password_confirmation],
      api_key: SecureRandom.urlsafe_base64
    )

    if user.save
      render json: UsersSerializer.new(user), status: 201
    # elsif user.errors.messages[:api_key] == ['has already been taken']
    #   create
    elsif user.errors.messages.values.flatten.include?("can't be blank")
      render json: {
        description: "Error: All fields must be filled in."
      }, status: 400
    elsif user.errors.messages.values.flatten.include?("has already been taken")
      render json: {
        description: "Error: A user with that email already exists."
      }, status: 409
    elsif user.errors.messages[:password_confirmation].present?
      render json: {
        description: "Error: Password and password confirmation must match."
      }, status: 400
    end
  end

  # private
  # def user_params
  #   params.require(:user).permit(:email, :password, :password_confirmation)
  # end
end