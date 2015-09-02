class AddSearchStringToSearch < ActiveRecord::Migration
  def change
    add_column :searches, :search, :string
  end
end
