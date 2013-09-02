class Event < ActiveRecord::Base
  validates_presence_of :date
  validates :title, uniqueness: true, presence: true

  def date_valid
    #date is in the future
  end

end
