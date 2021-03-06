describe Item do

  let(:item_name) { "food" }
  let(:item_price) { 200.0 }

  before do
    Item.create name: item_name, price: item_price
  end

  it { is_expected.to belong_to :bill }

  it 'creates an item with a name' do
    my_item = Item.first
    expect(my_item.name).to eq item_name
  end

  it 'creates an item with an amount' do
    my_item = Item.first
    expect(my_item.price).to eq item_price
  end

  it 'updates item with email address' do
    my_item = Item.first
    my_item.update(contact: "test@gmail.com")
    expect(my_item.contact).to eq "test@gmail.com"
  end

  it 'deletes an item from the bill' do
    my_item = Item.first
    my_item.destroy
    expect(Item.count).to eq 0
  end

end
