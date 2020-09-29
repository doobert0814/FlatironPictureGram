class CreatePictures < ActiveRecord::Migration[6.0]
  def change
    create_table :pictures do |t|
      t.string :img_url
      t.string :title 
      t.belongs_to :owner_id

      t.timestamps
    end
  end
end
