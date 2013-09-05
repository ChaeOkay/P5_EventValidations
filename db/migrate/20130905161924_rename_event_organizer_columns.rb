class RenameEventOrganizerColumns < ActiveRecord::Migration
  def change
    rename_column :events, :organizer_name, :name
    rename_column :events, :organizer_email, :email
  end
end
