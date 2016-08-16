class Pokemon
  attr_accessor :id, :name, :type, :hp, :db

  @@all = []
  def self.save(name, type, db)
    db.execute("INSERT INTO pokemon (name, type) VALUES (?, ?)", name, type)
  end

  def self.find(id_num, db)
    [pokemon_info = db.execute("SELECT * FROM pokemon WHERE id=?", id_num).first]
  #  binding.pry
    # Pokemon.new(pokemon_info[0], pokemon_info[1], pokemon_info[2], db)

  end

  def initialize(id, name, type, db)
    @id = id
    @name = name
    @type = type
    @db = db
    @@all << self
  end

end
