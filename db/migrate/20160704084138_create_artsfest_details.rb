class CreateArtsfestDetails < ActiveRecord::Migration
  def change
    create_table :artsfest_details do |t|
      t.string :name_
      t.string :house_
      t.string :roll_no_
      t.text :prize_

      t.timestamps null: false
    end
  end
end
