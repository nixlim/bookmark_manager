require 'bookmark_factory'

describe BookmarkFactory do
  subject { described_class.new(bookmark_class) }
  let(:bookmark_class) { double :bookmark_class, new: bookmark_instance }
  let(:bookmark_instance) { spy :bookmark_instance }


  it 'should respond to #create_bookmark' do
    expect(subject).to respond_to(:create_bookmark)
  end

  it 'should call Bookmark class with a .new method' do
    subject.create_bookmark
    expect(bookmark_class).to have_received(:new)
  end

  it 'should create a new instance of a Bookmark class' do
    expect(subject.create_bookmark).to eq bookmark_instance
  end
end