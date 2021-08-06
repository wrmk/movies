class ApplicationController < ActionController::Base
  before_action :set_categories

  def set_categories
    @category = Movie.categories
  end
end
