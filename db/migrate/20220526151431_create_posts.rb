class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.date :start_day
      t.date :end_day
      t.string :allday

      t.timestamps
    end
  end
end
