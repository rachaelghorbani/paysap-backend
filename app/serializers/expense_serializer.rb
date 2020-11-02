class ExpenseSerializer < ActiveModel::Serializer
  attributes :id, :date, :description, :amount, :category
end
