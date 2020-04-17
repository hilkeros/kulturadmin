class Api::V1::EventsController < ApplicationController
    def index
        @events = Event.where(organisation_id: params[:organisation_id])
        render json: @events
    end

    def show
        @event = Event.find(params[:id])
        render json: @event
    end
end
