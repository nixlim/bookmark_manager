require './lib/database_connector'

class BookmarkFactory

  def self.all
    connection = DatabaseConnector.connect
    dbdata = connection.exec("SELECT * FROM bookmarks ORDER BY id")
    dbdata.map {|row| row['url']}
  end

  def self.create(url)
    connection = DatabaseConnector.connect
    dbdata = connection.exec("INSERT INTO bookmarks(url) VALUES('#{url}')")

  end


end
