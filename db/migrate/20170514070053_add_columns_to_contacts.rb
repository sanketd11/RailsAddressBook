class AddColumnsToContacts < ActiveRecord::Migration[5.1]
  def change
    add_column :contacts, :firstname, :string
    add_column :contacts, :lastname, :string
    add_column :contacts, :city, :string
    add_column :contacts, :state, :string
    add_column :contacts, :country, :string
    add_column :contacts, :zip, :string
  end
end
