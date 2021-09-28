class Dev < ActiveRecord::Base
  has_many :freebies 
  has_many :companies, through: :freebies

  def received_one?(item_name)
    # if self.freebies.select{ |freebie| freebie["item_name"] == item_name } != []
    #   return true
    # else 
    #   return false
    # end

    # self.freebies.any? { |freebie| freebie["item_name"] == item_name }

    # self.freebies.any? do |freebie|
    #   freebie.item_name == item_name
    # end 

    # self.freebies.where(item_name: item_name).exists?

    !!self.freebies.find_by(item_name: item_name)
  end

  # dev_owns = Dev.first
  # dev_owns.give_away(dev, freebie)
  def give_away(dev, freebie)
    # dev_owns.give_away(Dev.find(2), Freebie.find(6))
    # if dev_owns == freebie.dev
    # if self == freebie.dev 
    #   # updates the freebie's dev_id to be the id of the instance of Dev passed in as an argument
    #   freebie.update(dev_id: dev.id)
    # else 
    #   "you can't give what you don't have."
    # end

    # if self.received_one?(freebie.item_name)
    #   freebie.dev = dev
    #   freebie.save
    # else
    #   puts "Not your freebie!"
    # end

    freebie.update(dev: dev) unless freebie.dev != self

  end

end
