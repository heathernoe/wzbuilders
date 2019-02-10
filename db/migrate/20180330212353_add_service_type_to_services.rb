class AddServiceTypeToServices < ActiveRecord::Migration[5.1]
  def change
    add_column :services, :service_type, :string
    add_column :services, :string, :string
  end
end
