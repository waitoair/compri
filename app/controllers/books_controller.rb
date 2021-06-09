class BooksController < ApplicationController
  skip_before_action :authenticate_user!, only:[:index, :show]
  def index
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
    @watch_list = WatchList.new
  end
end
