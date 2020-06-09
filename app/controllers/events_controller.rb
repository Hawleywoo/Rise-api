class EventsController < ApplicationController
    def index
        events = Event.all
        render json: events
    end

    def show
        @event = Event.find(params[:id])
        render json: @event
    end

    def create
        created_event = Event.create(
            name: params[:name],
            date: params[:date],
            desc: params[:desc],
            img: params[:img]
        )
        id = created_event.id
        render json: id
    end

    def update
        event = Event.find(params[:id])
        event.update(
            name: params[:name],
            date: params[:date],
            desc: params[:desc],
            img: params[:img],
        )

        render json: event
    end

    def delete
        event = Event.find(params[:id])
        event.destroy
    end
end
