require './lib/database_connector'
require './lib/bookmark'

class BookmarkFactory

  def self.all(bookmark_class = Bookmark)
    p db_connection.exec("SELECT * FROM bookmarks ORDER BY id").map {|row| bookmark_class.new(row['id'], row['title'], row['url'])}
  end

  def self.check_url(url)
    url =~ /\A#{URI::regexp}\z/ ? create(url) : 'Invalid URL submitted, try again.'
  end

  def self.create(url)
    db_connection.exec("INSERT INTO bookmarks(url) VALUES('#{url}')")
    "Record Created"
  end

  private

  def self.db_connection
    DatabaseConnector.connect
  end

end
