class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|

      t.string :item_name,            null: false
      t.string :item_memo,            null: false
      t.references :user,             null: false, foreign_key: true
      t.references :box,              null: false, foreign_key: true

      t.timestamps
    end
  end
end
