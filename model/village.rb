
class Village
  include DataMapper::Resource
  property :id, Serial
  timestamps :at

  property :name,       String
  property :description,String
  
  property :max_player, Integer
  property :options,    String
  property :start_time  DateTime
  property :end_time    DateTime
  
  property :victory     Integer

  has 1, :manager
  has n, :players
  has n, :days

  def dispatch_player
    chars   = Character.all.shuffle
    roles   =      Role.all.map{ |role|
                     [role] * case role
                                when Villager;    7
                                when Sage;        1
                                when Psychic;     1
                                when Guardsman;   1
                                when Gemini;      2
                                when Poisoner;    1
                                when Mimic;       1
                                when Zoologist;   1
                                when Werewolf;    4
                                when Insane;      1
                                when Ninetails;   1
                                when Godfat;      1
                              end
                   }.flatten.shuffle

    players.each{ |pl|
      pl.update_attributes( :character => chars.pop,
                                 :role => roles.pop  )
    }

  end
end
