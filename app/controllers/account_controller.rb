class AccountController < ApplicationController
    def new_user
        @account = Account.new
    end

    def create
         puts "PARAMS #{params[:accounts]}"
        @account = Account.new(account_params)
        if @account.valid?
            @account.save
            render "/account/success"
        else
            render "/account/new_user"

        end
    end

    private

    def account_params
        params.require(:accounts).permit(:username, :password, :email)
    end
end
