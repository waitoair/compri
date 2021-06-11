class BooksController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  def index
    if params[:query].present?
      @books = Book.search_book(params[:query])
    else
      @books = Book.all
    end
  end

  def show
    @book = Book.find(params[:id])
    @watch_list = WatchList.new
  end
end
