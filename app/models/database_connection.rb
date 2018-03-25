class DatabaseConnection

  def self.setup(database)
    @connection = PG.connect(database)
  end

  def self.connection
    @connection
  end

  def self.query(sql)
    @connection.exec(sql)
  end

end
