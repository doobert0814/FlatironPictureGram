class CreatePictureTags < ActiveRecord::Migration[6.0]
  def change
    create_table :picture_tags do |t|

      t.timestamps
    end
  end
end