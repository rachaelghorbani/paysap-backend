class DocumentSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :description, :pdf_url, :preview_url

end
