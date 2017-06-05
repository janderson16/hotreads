class Api::V1::LinksController < ApplicationController
  def index
    @links = Link.all
  end

  def create
    
    render status: 200
  end
end
