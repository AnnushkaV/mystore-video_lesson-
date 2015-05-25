class Api::V1::ItemsController < ApplicationController
      respond_to :json

      def index
        @item = Item.all
        respond_with @item.as_json(only:  [:price, :description]), status: 200
      end


     #/items/1 GET
     def show
       unless @item
         render text: "Page not Anna found", status: 404
       end
       # or  if  @item = Item.where(id: params[:id]).first
       # else
       # render text: "Page not found", status: 404

     end
end
