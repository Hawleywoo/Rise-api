class QuotesController < ApplicationController
    def index
        @quotes = Quote.all
        render json: @quotes
    end

    def show
        @quote = Quote.find(params[:id])
        render json: @quote 
    end

    def create
        Quote.create(
            text: params[:text],
            author: params[:author]
        )
        
        render json: @quotes
    end

    def update 
        quote = Quote.find(params[:id])
        quote.update(
            text: params[:text],
            author: params[:author]
        )
        render json: quote
    end

    def destroy
        quote = Quote.find(params[:id])
        quote.destroy
    end
end
