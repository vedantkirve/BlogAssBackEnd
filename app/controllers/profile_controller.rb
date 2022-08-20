class ProfileController < ApplicationController

    def userInfo
        firstName = params[:firstName]
        lastName = params[:lastName]
        email = params[:email]
        password = params[:password]

        profileInfo = Profile.new(firstName:firstName,lastName:lastName,email:email,password:password)
        profileInfo.save
        render :json => profileInfo
    end

    def sendUserId

        userIdInfo = Profile.find_by("email": params[:email],"password": params[:password])
        if userIdInfo
            render :json => userIdInfo
        else
            render :json => "NoUser"
        end
    end

end
