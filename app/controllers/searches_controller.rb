class SearchesController < ApplicationController
  def create
    Rails.logger.debug "create params:  #{params}"
    redirect_to search_path(params[:twitter][:search])
  end

  def show
    Rails.logger.debug "show params:  #{params.inspect}"
    @tweets = TwitterClient.new.search("##{params[:id]}")
  end
end
