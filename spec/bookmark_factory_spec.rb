require 'bookmark_factory'

describe BookmarkFactory do
  it 'creates an array of bookmarks' do
    expect(subject.bookmarks).to be_an_instance_of Array
  end
end
