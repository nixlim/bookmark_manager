require './lib/database_connector'
require './lib/bookmark'

class BookmarkFactory

  def self.all(bookmark_class = Bookmark)
    p db_connection.exec("SELECT * FROM bookmarks ORDER BY id").map {|row| bookmark_class.new(row['id'], row['title'], row['url'])}
  end

  def self.check_url(title, url)
    url =~ /\A#{URI::regexp}\z/ ? create(title, url) : 'Invalid URL submitted, try again.'
  end

  def self.create(title, url, bookmark_class = Bookmark)
    db_connection.exec("INSERT INTO bookmarks(url, title) VALUES('#{url}','#{title}') RETURNING url").map {|row| bookmark_class.new(row['id'], row['title'], row['url'])}
  end

  private

  def self.db_connection
    DatabaseConnector.connect
  end

end
