class LandingController < ApplicationController
  include HTTParty
  require 'nokogiri'
  def index
    @search  = Search.new
  end
  def show
    
  end
end
