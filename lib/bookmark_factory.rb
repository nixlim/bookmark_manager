require 'pg'

class BookmarkFactory

  def self.all
    @bookmarks = []
    conn = PG.connect(dbname: 'bookmark_manager')
    dbdata = conn.exec("SELECT * FROM bookmarks ORDER BY id")
    dbdata.map {|row| row['url']}
  end


end