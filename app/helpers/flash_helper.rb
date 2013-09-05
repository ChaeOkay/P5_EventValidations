helpers do

  def create_flash(record)
    record.errors.message.each do |key, v|
      msg = ''
        v.each do |value|
          msg += "#{key.capitalize} #{value}"
        end
      flash[:key] = msg
    end
  end

end