class ListsController < ApplicationController
  def index
    @lists = List.all
    # raise
  end

  # fetch id: @lists[1].id

  def show
    @list = List.find(params[:id])
    @bookmark = Bookmark.new
    # raise
  end

  def new
    @list = List.new
    # raise
  end

  def create
    @list = List.new(list_params)
    @list.save
    redirect_to lists_path
  end

  private

  def list_params
    params.require(:list).permit(:name)
  end
end
