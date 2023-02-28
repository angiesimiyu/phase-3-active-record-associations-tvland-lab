class Show < ActiveRecord::Base

    belongs_to :network
    has_many :characters
    has_many :actors, through: :characters

    def actors_list
      actors.full_name.each do |actor|
          "#{actor.&:full_name} - #{actor.show}"
      end
    end
end

end