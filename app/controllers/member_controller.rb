class MemberController < ApplicationController
    before_action :authenticate_user!

    def index
    end

    def show
        @user = User.find(params[:id])
        authorize! :read, @user
    end

end
