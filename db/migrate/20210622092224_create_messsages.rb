class CreateMesssages < ActiveRecord::Migration[6.0]
  def change
    create_table :messsages do |t|
      t.references :user, null: false, foreign_key: true
      t.references :room, null: false, foreign_key: true
      t.text :content

      t.timestamps
    end
  end
end
