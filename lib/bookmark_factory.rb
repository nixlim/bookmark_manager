require './lib/database_connector'

class BookmarkFactory

  def self.all
    @bookmarks = []
    connection = DatabaseConnector.connect
    dbdata = connection.exec("SELECT * FROM bookmarks ORDER BY id")
    dbdata.map {|row| row['url']}
  end


end