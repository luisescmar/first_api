class V2::TodosController < ApplicationController
  def index
    json_response({message: 'Hi Nyarny!'})
  end
end
