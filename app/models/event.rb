class MyValidator < ActiveModel::Validator
  def validate(event)
    if (1+2 == 3)
      event.errors[:date] << "Error identified"
    end
  end
end

class Event < ActiveRecord::Base
  include ActiveModel::Validations
  validates :title, uniqueness: true, presence: true
  validates_presence_of :date
  validates_with MyValidator

end
