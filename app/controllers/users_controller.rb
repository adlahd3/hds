class UsersController < ApplicationController

  before_action :set_user, only: [:show, :grantRoles, :edit, :update]

  def index
    @users = User.all
  end

  def show
    # get roles
    @roles = Role.all
  end

  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
    @roles = Role.all
  end


  def grantRoles

    authorize! :manage, @user


      if params[:admin] == "1"
        @user.add_role(:admin)
      elsif params[:admin] == "0"
        @user.remove_role(:admin)
      end

      if params[:coordinator] == "1"
        @user.add_role(:coordinator)
      elsif params[:coordinator] == "0"
        @user.remove_role(:coordinator)
      end

      if params[:frontdesk] == "1"
        @user.add_role(:frontdesk)
      elsif params[:frontdesk] == "0"
        @user.remove_role(:frontdesk)
      end

      if params[:driver] == "1"
        @user.add_role(:driver)
      elsif params[:driver] == "0"
        @user.remove_role(:driver)
      end


    flash[:notice] ="#{@user.name}'s role is changed successfully"
    redirect_to users_path

  end


  private
  # Use callbacks to share common setup or constraints between actions.
  def set_user
    @user = User.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def user_params
    params.require(:user).permit(:id, :email, :name, :encrypted_password)
  end

end
