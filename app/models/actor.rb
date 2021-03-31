class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    "#{self.first_name} #{self.last_name}"
  end

  def list_roles
    list_roles_arr = self.characters.collect do |character|
     "#{character.name} - #{character.show.name}"
    end
    list_roles_arr.join
  end

end