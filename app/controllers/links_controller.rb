class LinksController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    @links = Link.all
  end

  def create
    link = params["link"]["url"]
    db_link = Link.find_or_create_by(url: link)
    db_link.read_count += 1
  end

end
