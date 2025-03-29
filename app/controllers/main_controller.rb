class MainController < ApplicationController
  # layout "custom"
  def welcome
    @name = "Christian"
    # render layout: "custom"
  end
end