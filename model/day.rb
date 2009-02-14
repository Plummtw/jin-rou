
class Day
  include DataMapper::Resource
  property :id, Serial
  timestamps :at

  # 0    -> waiting room
  # odd  -> day
  # even -> night
  property :num_of_day, Integer

  belongs_to :village

  has n, :messages
end
