# frozen_string_literal: true

# Controller
class SessionsController < Devise::SessionsController
  def create
    user = User.select(:id, :email, :encrypted_password).find_by_email(email)

    if user&.valid_password?(params[:password])
      token = user.generate_jwt
      res = { user: user, token: token }.to_json
      render json: res, status: :created
    else
      render json: {
        errors: { 'email or password' => ['is invalid'] }
      }, status: :unprocessable_entity
    end
  end

  def email
    params[:email]
  end
end
