class Cart < ApplicationRecord
  has_many :cart_items
  has_many :books, through: :cart_items

  def add_book_to_cart(book)
    ci = cart_items.build
    ci.book = book
    ci.save
  end
end
