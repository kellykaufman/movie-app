class UsersController < ApplicationController
  def create
    user = User.create!(name: params[:name], email: params[:email], password_digest: params[:password_digest])

    render json: user
  end
end
