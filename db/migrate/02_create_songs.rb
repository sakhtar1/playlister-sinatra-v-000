class CreateSongs < ActiveRecord::Migration[5.1]
  def change
    create_table :songs do |t|
      t.string :name

      t.belongs_to :artists, index: true, foreign_key: true
    end
  end
end
