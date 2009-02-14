
class Message
  include DataMapper::Resource
  property :id, Serial
  timestamps :at

  property :name,   String
  property :effect, String

  belongs_to :player
end
