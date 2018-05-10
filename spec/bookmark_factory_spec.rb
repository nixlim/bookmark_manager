require 'bookmark_factory'

describe BookmarkFactory do
  it 'creates an array of bookmarks' do
    expect(described_class.all).to be_an_instance_of Array
  end

  it 'responds to #create' do
    expect(described_class).to respond_to(:create)
  end

  it 'adds a new bookmark to list' do
    described_class.create('http://fakenews.com')
    expect(described_class.all.include?('http://fakenews.com')).to be true
  end
end
