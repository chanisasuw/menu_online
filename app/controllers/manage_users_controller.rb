class ManageUsersController < ApplicationController

  def index
    @users = User.all.paginate(:page => params[:page], :per_page => 20)
  end

  def new
    @user = User.new
  end

  def create
    random = Devise.friendly_token.first(10)
    params = user_create_params
    @user = User.new(params)
    @user.password = random
    @user.password_confirmation = random
    if @user.save
      # @user.deliver_password_reset_instructions
      flash[:notice] = "Create user successfully."
      redirect_to(manage_users_path)
    else
      flash.now[:error] ||= []
      flash[:error] << "Cannot create user."
      flash[:error] << "#{@user.errors.full_messages.join(", ")}"
      render action: :new
    end
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

   def update
    @user = User.find(params[:id])

    @user.attributes = edit_user_params

    if @user.save
      flash[:notice] = "Update user successfully"
      redirect_to(manage_users_path)
    else
      flash.now[:error] = []
      flash[:error] << "Cannot update user profile"
      flash[:error] << "#{@user.errors.full_messages.join(", ")}"
      render action: :edit
    end
  end

  def destroy
    user = User.find(params[:id])
    user.destroy
    redirect_to(manage_users_path)
    flash[:notice] = "Deleted user successfully."
  end

    # Strong parameters sanitizer
 private
  def user_create_params
    params.require(:user).permit(
      :email)
  end

   def edit_user_params
    params.require(:user).permit(
      :name,
      :email,
    )
  end
end





