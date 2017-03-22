class CreateJokers < ActiveRecord::Migration[5.0]
  def change
    create_table :jokers do |t|
      t.references :user, foreign_key: true
      t.string :title
      t.text :messages

      t.timestamps
    end
  end
end
