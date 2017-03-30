class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def add_to_cart
    @book = Book.find(params[:id])
    current_cart.add_book_to_cart(@book)
    redirect_to :back
    flash[:notice] = "成功加入购物车"
  end
end
