require 'bookmark_factory'

describe BookmarkFactory do
  describe '#all' do
    it 'creates an array of bookmarks' do
      expect(described_class.all).to be_an_instance_of Array
    end
  end

  describe '#create method' do
    it 'adds a new bookmark to list' do
      described_class.create('http://fakenews.com')
      expect(described_class.all.include?('http://fakenews.com')).to be true
    end
    it 'checks whether the submitted URL is a valid URL' do
      expect(described_class.check_url('cnn')).to eq 'Invalid URL submitted, try again.'
    end
  end
end
