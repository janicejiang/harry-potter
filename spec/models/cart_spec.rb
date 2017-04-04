require 'rails_helper'

RSpec.describe Cart, type: :model do
  before do
    @cart = Cart.create
  end

  it "第一集买1本,总价应为$100" do
    sum = @cart.total_price(1, 1)
    expect(sum).to eq(100)
  end

  it "第一集买1本,第二集买1本,总价应为$190" do
    sum = @cart.total_price(2, 2)
    expect(sum).to eq(190)
  end

  it "第一集买2本,第二集买1本,总价应为$290" do
    sum = @cart.total_price(3, 2)
    expect(sum).to eq(290)
  end

  it "第一集买1本,第二集买1本,第三集买1本,总价应为$270" do
    sum = @cart.total_price(3, 3)
    expect(sum).to eq(270)
  end

  it "第一集买2本,第二集买1本,第三集买1本,总价应为$370" do
    sum = @cart.total_price(4, 3)
    expect(sum).to eq(370)
  end

  it "第一集买1本,第二集买1本,第三集买1本,第四集买1本,总价应为$320" do
    sum = @cart.total_price(4, 4)
    expect(sum).to eq(320)
  end

  it "第一集买2本,第二集买1本,第三集买1本,第四集买1本,总价应为$420" do
    sum = @cart.total_price(5, 4)
    expect(sum).to eq(420)
  end

  it "第一集买1本,第二集买1本,第三集买1本,第四集买1本,第五集买1本,总价应为$375" do
    sum = @cart.total_price(5, 5)
    expect(sum).to eq(375)
  end

  it "第一集买2本,第二集买1本,第三集买1本,第四集买1本,第五集买1本,总价应为$475" do
    sum = @cart.total_price(6, 5)
    expect(sum).to eq(475)
  end
end
