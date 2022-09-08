class UserNotifierMailer < ApplicationMailer
    default from: 'pramodini.tr@cognitiveclouds.com'

    def send_sign_up_email(user)
        @user = user
        mail( to: @user.email,
        subject: 'Thanks for signing up for Health app' )
    end
end
