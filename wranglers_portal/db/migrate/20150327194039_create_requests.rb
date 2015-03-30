class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.string :name
      t.string :email
      t.string :class_of
      t.string :major
      t.string :description

      t.timestamps
    end
  end
end
