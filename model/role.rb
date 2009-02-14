
class Role
  include DataMapper::Resource
  property :id, Serial
  property :type, Discriminator
  property :name, String
end

# Roles for the Order
class Villager < Role
end

class Sage < Role
end

class Psychic < Role
end

class Guardsman < Role
end

class Gemini < Role
end

class Poisoner < Role
end

class Mimic < Role
end

# Roles for the Order/Chaos
class Zoologist < Role
end

# Roles for the Chaos
class Werewolf < Role
end

class Insane < Role
end

# Roles for the Variation
class Ninetails < Role
end

class Godfat < Role
end
