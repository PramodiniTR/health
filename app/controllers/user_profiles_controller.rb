class UserProfilesController < ApplicationController
    before_action :set_user_profile, only: %i[ show update destroy ]
    #before_action :authenticate User!

    def index
        @user_profiles = UserProfile.all
        render json: @user_profiles
    end

    def create
        @user_profile = UserProfile.new(user_profile_params)

        if @user_profile.save
        render json: @user_profile, status: :created, location: @user_profile
        else
        render json: @user_profile.errors, status: :unprocessable_entity
        end
    end

    def show
        render json: @user_profile
    end

    def update
        if @user_profile.update(user_profile_params)
        render json: @user_profile
        else
        render json: @user_profile.errors, status: :unprocessable_entity
        end
    end

    def destroy
        @user_profile.destroy
    end

    private
    
    def set_user_profile
      @user_profile = UserProfile.find(params[:id])
    end

    def user_profile_params
      params.require(:user_profile).permit(:user_id, :first_name, :last_name, :email, :phone, :status, :joining_date, :employee_type, :salary, :created_by, :updated_by)
    end
end
