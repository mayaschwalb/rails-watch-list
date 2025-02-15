class MoviesController < ApplicationController
  def destroy
    @movie = Movie.find(params[:id])
    @movie.bookmarks.destroy_all
    @movie.destroy
    redirect_to list_path(@movie.lists)
  end
end
