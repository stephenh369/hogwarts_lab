require_relative('../db/sql_runner')

class House

    attr_reader :name, :id

    def initialize(options)
        @id = options['id'].to_i if options['id']
        @name = options['name']
    end

    def save()
        sql = "INSERT INTO houses (name) 
        VALUES ($1) RETURNING id"
        values = [@name]
        result = SqlRunner.run(sql, values)
        @id = result[0]['id'].to_i
    end

    def self.map_items(data)
        return data.map { |house| House.new(house) }
    end

    def self.all()
        sql = "SELECT * FROM houses"
        result = SqlRunner.run(sql)
        return self.map_items(result)
    end

    def self.delete_all()
        sql = "DELETE FROM houses"
        SqlRunner.run(sql)
    end

    def self.find(id)
        sql = "SELECT * FROM houses WHERE id = $1"
        values = [id]
        house = SqlRunner.run(sql, values)
        result = House.new(house.first)
        return result
    end
    
end