class AccountSerializer < ActiveModel::Serializer
  attributes :id, :account_number, :amount
end
