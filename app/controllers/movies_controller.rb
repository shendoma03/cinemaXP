class MoviesController < ApplicationController
  def new
    @movie = Movie.new
  end

  def index
    @movie = Movie.all
  end

  def create
    #render plain: params[:movie].inspect
    @movie = Movie.new(movie_param)

    @movie.save
    redirect_to @movie
  end

  def edit
    @movie = Movie.find(params[:id])
  end

  def update
    @movie = Movie.find(params[:id])

    if @movie.update(movie_param)
      redirect_to @movie
    else
      render 'edit'
    end
  end

  def show
    @movie = Movie.find(params[:id])
  end



  def destroy
    @movie = Movie.find(params[:id])
    @movie.destroy

    redirect_to movies_path
  end

  private
  def movie_param
    params.require(:movie).permit( :title, :description, :date, :cinemanum, :tix1, :tix2, :tix3, :tix4, :time1s, :time1f, :time2s, :time2f, :time3s, :time3f, :time4s, :time4f, :img)
  end
end
