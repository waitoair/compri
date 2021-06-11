class BooksController < ApplicationController

  skip_before_action :authenticate_user!, only: %i[index show]
  def index
    if params[:query].present?
      @books = Book.search_book(params[:query])
    elsif params[:language]
      @books = Book.where(language: params[:language])
    else
      @books = []
    end
  end

  def show
    @book = Book.find(params[:id])
    @watch_list = WatchList.new
  end
end
