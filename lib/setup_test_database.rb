require './lib/database_connector'

module SetupTestDatabase

  def self.truncate
    DatabaseConnector.connect.exec('TRUNCATE TABLE bookmarks')
  end

  def self.create_rows
    DatabaseConnector.connect.exec('INSERT INTO bookmarks(url, title) VALUES (\'http://www.makersacademy.com\', \'Makers Academy\'), (\'http://google.com\', \'Google\'), (\'http://news.bbc.co.uk\', \'BBC News\')')
  end

  def self.reset_database
    self.truncate
    self.create_rows
  end


end
