helpers do

  def create_flash(record)
    record.errors.messages.each do |key, v|
      msg = ''
        v.each do |value|
          msg += "#{key.capitalize} #{value}"
        end
      flash[key] = msg
    end
    binding.pry
  end

end
