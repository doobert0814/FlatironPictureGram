class CreatePictureTags < ActiveRecord::Migration[6.0]
  def change
    create_table :picture_tags do |t|
      t.belongs_to :picture
      t.belongs_to :tag
      
      t.timestamps
    end
  end
end
