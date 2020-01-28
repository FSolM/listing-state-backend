class UsersController < ApplicationController
  def create
    if User.create(user_params)
      p params
      render json: 'Success'
    else
      render json: 'Something went wrong'
    end
  end

  def destroy
  end

  private def user_params
    params.require(:user).permit(:username, :password)
  end
end
