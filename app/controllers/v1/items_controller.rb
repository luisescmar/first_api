module V1
  class ItemsController < ApplicationController
    before_action :set_todo
    before_action :set_todo_item, only: [:show, :update, :destroy]

    # GET /todos/:todo_id/items
    def index
      @items = @todo.items
      json_response(@items)
    end

    # GET /todos/:todo_id/items/:item_id
    def show
      json_response(@item)
    end

    # POST /todos/:todo_id/items
    def create
      @item = Item.create!(item_params)
      json_response(@item, :created)
    end

    # UPDATE /todos/:todo_id/items/:item_id
    def update
      @item.update(item_params)
      head :no_content
    end

    # DELETE /todos/:todo_id/items/:item_id
    def destroy
      @item.destroy
      head :no_content
    end

    private

    def set_todo
      @todo = Todo.find(params[:todo_id])
    end

    def set_todo_item
      @item = @todo.items.find_by!(id: params[:id]) if @todo
    end

    def item_params
      params.permit(:name, :done, :todo_id)
    end
  end
end