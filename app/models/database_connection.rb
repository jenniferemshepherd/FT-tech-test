class DatabaseConnection

  def self.setup(database)
    p dbname:database
    @connection = PG.connect(dbname: database)
  end

  def self.connection
    @connection
  end

  def self.query(sql)
    @connection.exec(sql)
  end

end
