class Api::V1::ContentBlocksController < ApplicationController
    def index
        @blocks = ContentBlock.where(organisation_id: params[:organisation_id])
        render json: @blocks
    end

    def show
        @block = ContentBlock.find(params[:id])
        render json: @block
    end
end
