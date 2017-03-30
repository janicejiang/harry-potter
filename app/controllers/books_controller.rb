class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def add_to_cart
    @book = Book.find(params[:id])
    redirect_to :back
  end
end
