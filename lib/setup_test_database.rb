require './lib/database_connector'

module SetupTestDatabase

  def self.truncate
    DatabaseConnector.connect.exec('TRUNCATE TABLE bookmarks')
  end

  def self.create_rows
    DatabaseConnector.connect.exec('INSERT INTO bookmarks(url) VALUES (\'http://www.makersacademy.com\'), (\'http://google.com\'), (\'http://news.bbc.co.uk\')')
  end

  def self.reset_database
    self.truncate
    self.create_rows
  end


end
