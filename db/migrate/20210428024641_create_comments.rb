class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.integer :cocktail_id
      t.references :user, foreign_key: true
      t.text :text
      t.timestamps
    end
  end
end