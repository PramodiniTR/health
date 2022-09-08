class Users::RegistrationsController < Devise::RegistrationsController
    respond_to :json
  
    private
  
    def respond_with(resource, _opts = {})
      register_success 
      return if resource.persisted?
  
      register_failed
    end
  
    def register_success
      if @user.save
        # Deliver the signup email
        UserNotifierMailer.send_sign_up_email(@user).deliver
        render json: {message: "SIGNUP "}
      end
    end
  
    def register_failed
      render json: { message: "Something went wrong." }
    end
  end