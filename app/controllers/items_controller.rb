class ItemsController < ApplicationController
    # retrieving all items 
    def index
        # calling all items
        items = Item.all
        #render as JSON, include users via serialization
        render json: items, include: :user
    end
end
