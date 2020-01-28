class UsersController < ApplicationController
  def create
    p User.new(user_params)
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
    params.require(:user).permit(:user, :password)
  end
end
