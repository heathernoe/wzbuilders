class CreateServices < ActiveRecord::Migration[5.1]
  def change
    create_table :services do |t|
	  t.string :type
	  t.string :description
      t.timestamps
    end
  end
end
