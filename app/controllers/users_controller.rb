class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def index
    @users = User.all
  end

  def edit
    @user = User.find(params[:id])
  end

  def create
    # @user = User.new(username: params[:username], email: params[:email], password: params[:password])
    @user = User.new(user_params)

    if @user.save
      redirect_to new_user_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def user_params
    params.expect(user: [ :username, :email, :password ])
  end
end
