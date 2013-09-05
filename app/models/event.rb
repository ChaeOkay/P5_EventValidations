class MyValidator < ActiveModel::Validator
  def validate(event)
    binding.pry
    if ( event.date && event.date <= Date.today )
      event.errors[:date] << "must be in the future"
    end
  end
end

class Event < ActiveRecord::Base
  include ActiveModel::Validations
  validates :title, uniqueness: true, presence: true
  validates_presence_of :date, :name, :semail
  validates_with MyValidator
end
