class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string :name
      t.string :date
      t.text :desc
      t.text :img

      t.timestamps
    end
  end
end
