class LinksController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    @links = Link.order('read_count DESC').limit(10)
  end

  def create
    url = params["link"]["url"]
    link = Link.find_or_create_by(url: url)
    link.update(read_count: link.read_count += 1)
  end

end
