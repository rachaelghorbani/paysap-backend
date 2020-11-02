class ExpensesController < ApplicationController
    def create 
        expense = Expense.create(expense_params)
        if expense.valid?
            render json: expense
        else 
            render json: {error: "failed to create expense"}, status: :not_acceptable
        end
    end

    def update
        expense = Expense.find(params[:id])
        if expense.update(expense_params)
            render json: expense
        else 
            render json: {error: "failed to update expense"}, status: :not_acceptable
        end
    end

    def destroy
        expense = Expense.find(params[:id])
        expense.destroy
        render json: expense
    end

    private

    def expense_params 
        params.require(:expense).permit(:user_id, :description, :amount, :date, :category)
    end
end
