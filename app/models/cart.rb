class Cart < ApplicationRecord
  has_many :cart_items
  has_many :books, through: :cart_items

  def add_book_to_cart(book)
    ci = cart_items.build
    ci.book = book
    ci.save
  end

  def total_price
    sum = 0
    amount = 0
    kind = cart_items.count

    cart_items.each do |cart_item|
      amount += cart_item.quantity
    end

    if kind == 1
      sum = amount * 100
    elsif kind == 2
      sum = amount * 100 - kind * 100 * 0.05
    elsif kind == 3
      sum = amount * 100 - kind * 100 * 0.1
    elsif kind == 4
      sum = amount * 100 - kind * 100 * 0.2
    elsif kind == 5
      sum = amount * 100 - kind * 100 * 0.25
    end
    sum
  end

  # def total_price(amount, kind)
  #   sum = 0
  #   if kind == 1
  #     sum = amount * 100
  #   elsif kind == 2
  #     sum = amount * 100 - kind * 100 * 0.05
  #   elsif kind == 3
  #     sum = amount * 100 - kind * 100 * 0.1
  #   elsif kind == 4
  #     sum = amount * 100 - kind * 100 * 0.2
  #   elsif kind == 5
  #     sum = amount * 100 - kind * 100 * 0.25
  #   end
  #   puts "#{amount}本书, #{kind}种, 总计$#{sum}."
  #   sum
  # end
end
