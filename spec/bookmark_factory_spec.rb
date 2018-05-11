require 'bookmark_factory'

describe BookmarkFactory do
  let(:bookmark_class) { double :bookmark_class, new: bookmark_instance }
  let(:bookmark_instance) { double :bookmark_instance, id: 1, title: 'Makers', url: 'https://www.makersacademy.com' }

  describe '#all' do
    it 'creates an array of bookmarks' do
      expect(described_class.all).to be_an_instance_of Array
    end
  end

  describe '#create method' do

    it 'adds a new bookmark to list' do
      expect(described_class.create('Makers','https://www.makersacademy.com', bookmark_class)).to eq [bookmark_instance]
    end
    it 'checks whether the submitted URL is a valid URL' do
      expect(described_class.check_url('cnn', 'cnn')).to eq 'Invalid URL submitted, try again.'
    end
  end
end
