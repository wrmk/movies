module MoviesHelper
  def rated(id)
    if current_user
      current_user.rated.include?(id) ? true : false
    end
  end

  def counter(index)
    index + 1 + (@movies.current_page - 1) * @movies.page.limit_value
  end  
end
