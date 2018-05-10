require './lib/database_connector'

class BookmarkFactory

  def self.all
    db_connection.exec("SELECT * FROM bookmarks ORDER BY id").map {|row| row['url']}
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
