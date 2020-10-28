class AccountsController < ApplicationController
    def create
        account = Account.create(accountParams)
        if account.valid?
            render json: account
        else 
            render json: {error: "failed to create account"}, status: :not_acceptable

        end
    end

    def update
        account = Account.find(params[:id])
        if account.update(accountParams)
            render json: account
        else 
            render json: {error: "failed to create account"}, status: :not_acceptable

        end

    end

    private

    def accountParams
        params.require(:account).permit(:account_number, :user_id, :amount)
    end
end
