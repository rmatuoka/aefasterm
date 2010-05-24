class AddItensToRequestCatalog < ActiveRecord::Migration
  def self.up
    add_column :request_catalogs, :aplicacao, :string
    add_column :request_catalogs, :tipo_existente, :string
  end

  def self.down
    remove_column :request_catalogs, :tipo_existente
    remove_column :request_catalogs, :aplicacao
  end
end
