class ListsController < ApplicationController
  def index
    @lists = List.all
  end

  def show
    set_lists
    @movies = Movie.all
    @bookmark = Bookmark.new
  end

  def new
    @list = List.new
  end

  def create
    @list = List.create(list_params)
    redirect_to list_path(@list)
  end

private

  def set_lists
    @list = List.find(params[:id])
  end

  def list_params
    params.require(:list).permit(:name)
  end

end
