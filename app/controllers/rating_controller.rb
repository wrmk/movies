class RatingController < ApplicationController
  before_action :set_movie, only: %i[ rate rate_update ]
  before_action :authenticate_user!, only: [:rate_update]

  def rate
    respond_to do |format|
      format.js
    end
  end

  def rate_update
    if current_user.rated.exclude?(@movie.id) && (1..10).include?(rate_params) then
      current_user.rated << @movie.id
      current_user.save

      @movie.rating.increment(:overall, rate_params)
      @movie.rating.increment(:votes, 1)
      @movie.rating.save
    end
  end

  private
    def set_movie
      @movie = Movie.find(params[:id])
    end 
    def rate_params
      params[:score] = params[:score].to_i   
    end 
end
