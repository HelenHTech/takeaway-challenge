require 'order'
require 'menu'

describe Order do
  let(:order) { Order.new }
  it 'initializes an empty list of items' do 
    expect(order.ordered_items).to be_empty
  end 
  context 'When ordering food' do
    before do
      order.select_dishes(:pizza, 1)
      order.select_dishes(:sausage, 1)
    end
    it 'Select dishes and add to ordered_items array' do
      expect(order.ordered_items).to eq([:pizza, 1, :sausage, 1])
    end
    it 'Check total for order' do
      expect(order.total).to eq(6)
    end
  end
end