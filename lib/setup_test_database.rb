require './lib/database_connector'

module SetupTestDatabase

  def self.truncate
    DatabaseConnector.connect.exec('TRUNCATE TABLE bookmarks')
  end

  def self.create_rows
    DatabaseConnector.connect.exec('INSERT INTO bookmarks VALUES (1, \'http://www.makersacademy.com\'), (2, \'http://google.com\'), (3, \'http://news.bbc.co.uk\')')
  end

  def self.reset_database
    self.truncate
    self.create_rows
  end


end

