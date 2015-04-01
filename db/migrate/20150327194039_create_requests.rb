class CreatePerformanceRequests < ActiveRecord::Migration
  def change
    create_table :performance_requests do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :organization
      t.datetime :date
      t.string :location
      t.text :description

      t.timestamps
    end
  end
end
