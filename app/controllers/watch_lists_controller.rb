class WatchListsController < ApplicationController
  def index
    @watch_lists = WatchList.where(user: current_user)
    @books = Book.all
  end

  def create
    @book = Book.find(params[:book_id])
    if current_user.watch_lists.where(book: @book).empty?
      @watch_list = WatchList.new(watch_list_params)
      @watch_list.book = @book
      @watch_list.user = current_user
      if @watch_list.save
        redirect_to watchlist_path
      else
        render :new
      end
    else
      redirect_to @book, notice: "Book already add"
    end
  end

  def destroy
    @watch_list = WatchList.find(params[:id])
    @watch_list.destroy

    redirect_to watchlist_path
  end

  private

  def watch_list_params
    params.require(:watch_list).permit(:target_price)
  end

end
