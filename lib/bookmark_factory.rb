class BookmarkFactory

  def initialize(bookmark = Bookmark)
    @bookmark = bookmark
  end

  def create_bookmark
    @bookmark.new
  end

end