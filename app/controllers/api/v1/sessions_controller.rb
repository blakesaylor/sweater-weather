class Api::V1::SessionsController < ApplicationController
  def create
    user = User.find_by(email: params[:email])
    if user&.authenticate(params[:password])
      render json: UsersSerializer.new(user)
    elsif
      render json: {
        description: "Error: Invalid credentials."
      }, status: 401
    end
  end
end