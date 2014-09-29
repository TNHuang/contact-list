class UsersController < ApplicationController

  def index
    # contacts = Contact.find_by_user_id(:user_id)

    if params.has_key?(:user_id)
      contacts = User.find_by_user_id(:user_id)
      render json: contacts
    else
      render json: User.all
    end

  end

  def create
    user = User.new(user_params)
    if user.save
      render json: user
    else
      render(
        json: user.errors.full_messages, status: :unprocessable_entity
      )
    end
  end

  def show
    user = User.find(params[:id])
    render json: user
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)


    render json: @user
  end

  def destroy
    user = User.find(params[:id])
    user.destroy

    index
  end

  private
  def user_params
    params.require(:user).permit(:username)
  end

end
