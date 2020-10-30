class DocumentsController < ApplicationController
    skip_before_action :authorized, only: [:index, :create]

    def index 
        documents = Document.all 
        render json: documents
    end
    def create
        # update database for documents to include a preview_url. here create a preview url using  prev_image = Cloudinary::Uploader.upload(params[:document], :format=>:jpg, :page=>1, :resource_type => :image

        # when we create the document set the preview_image_url: preview_url['url']

        byebug
        prevImage = Cloudinary::Uploader.upload(params[:preview], :format=>:jpg, :page=>1, :resource_type => :image)
        image = Cloudinary::Uploader.upload(params[:document])
        byebug
        document = Document.create(pdf_url: image["url"], preview_url: prevImage["url"], user_id: params["user_id"].to_i, description: params["description"])


        if document.save 
            render json: document
        else
            render json: {error: document.errors.full_messages}, status: :not_acceptable
        end
    end
    private
    def document_params

    end

end
