require 'bcrypt'

class UsersController < ApplicationController
  def create  
    if User.where(username: params[:username]).exists?
      render json: { status: 'Error', code: 3004, message: 'User already exists' }
    else
      if User.create(user_params)
        render json: { status: 'Success', code: 101, message: 'User created' }
      else
        render json: { status: 'Error', code: 3003, message: 'Error during the signup' }
      end
    end
  end

  def search
    user = User.where(username: params[:username])
    if user.exists?
      render json: { status: 'Success', code: 101, message: 'User found', payload: user }
    else
      render json: { status: 'Error', code: 3001, message: 'User not found' }
    end
  end

  def destroy
  end

  private def user_params
    params.require(:user).permit(:username, :password)
  end
end
