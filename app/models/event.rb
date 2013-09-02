class Event < ActiveRecord::Base
  validates :title, uniqueness: true, presence: true
  validates_presence_of :date
  validate :future_date

  def future_valid
    #date is in the future
  end

end
