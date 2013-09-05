helpers do

  def create_flash(record)
    binding.pry
    record.errors.messages.each do |key, v|
      msg = ''
        v.each do |value|
          msg += "#{key.capitalize} #{value}"
        end
      flash[:key] = msg
    end
  end

end
