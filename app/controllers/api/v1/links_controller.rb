class Api::V1::LinksController < ApplicationController

  # def index
  #   @links = Link.all
  # end

  # def create
  #   binding.pry
  #   link = params["link"]["url"]
  #   found_link = Link.find_or_create_by(url: link)
  #   reads = found_link.read_count
  #   if reads.nil? || reads < 1
  #     found_link.update(read_count: 1)
  #   else
  #     found_link.update(read_count: found_link.read_count    1)
  #   end
  #   # render status: 200
  # end
end
