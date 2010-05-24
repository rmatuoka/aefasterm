class AddItensToSitecontact < ActiveRecord::Migration
  def self.up
    add_column :sitecontacts, :city, :string
    add_column :sitecontacts, :state, :string
  end

  def self.down
    remove_column :sitecontacts, :state
    remove_column :sitecontacts, :city
  end
end
