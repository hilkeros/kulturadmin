class Api::V1::OrganisationsController < ApplicationController
    def index
        @organisations = Organisation.all
        render json: @organisations
    end

    def show
        @organisation = Organisation.find(params[:id])
        reder json: @organisation
    end
end
