class CreateCourses < ActiveRecord::Migration[5.1]
  def change
    create_table :courses do |t|
	  t.string :name
	  t.string :description
	  t.string :location
	  t.string :location_url
	  t.date :start_date
	  t.time :start_time
	  t.date :end_date
	  t.time :end_time
	  t.string :reference_info
	  t.references :service
      t.timestamps
    end
  end
end
