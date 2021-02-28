# frozen_string_literal: true

# Controller
class SessionsController < ApplicationController
  def new; end

  def create
    puts params.inspect
    user = User.find_by_email(params[:email])
    puts "el user #{user.email}"

    if user&.valid_password?(params[:password])
      token = user.generate_jwt
      puts "el token #{token}"
      render json: token.to_json
    else
      render json: {
        errors: { 'email or password' => ['is invalid'] }
      }, status: :unprocessable_entity
    end
  end
end
