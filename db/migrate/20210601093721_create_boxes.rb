class CreateBoxes < ActiveRecord::Migration[6.0]
  def change
    create_table :boxes do |t|

      t.string :box_name
      t.string :box_memo
      t.references :user,             null: false, foreign_key: true
      t.timestamps
    end
  end
end
