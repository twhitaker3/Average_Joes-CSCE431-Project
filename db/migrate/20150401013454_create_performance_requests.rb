class CreatePerformanceRequests < ActiveRecord::Migration
  def change
    create_table :performance_requests do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :organization
      t.datetime :start_at
      t.datetime :end_at
      t.string :location
      t.text :description
      t.string :status
      t.string :kind
      t.string :dress
      t.string :adr_line1
      t.string :adr_line2
      t.string :city
      t.string :state
      t.string :zip


      t.timestamps
    end
  end
end
