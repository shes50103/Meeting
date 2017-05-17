class CreateElements < ActiveRecord::Migration[5.1]
  def change
    create_table :elements do |t|
      t.string :name
      t.text :content
      t.integer :completion, default: 0
      t.references :chatroom, foreign_key: true
      t.timestamps
    end
  end
end
