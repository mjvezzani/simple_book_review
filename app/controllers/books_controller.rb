class BooksController < ApplicationController

  def index
    if params[:search]
      @books = Book.search(params[:search]).order('created_at DESC')
    else
      @books = Book.all.order('created_at DESC')
    end
  end

  def show
    @book = Book.find(params[:id])
  end

end
