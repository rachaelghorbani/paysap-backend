class DocumentSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :description, :url
end
