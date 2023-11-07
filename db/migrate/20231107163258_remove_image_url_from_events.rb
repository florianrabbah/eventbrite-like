class RemoveImageUrlFromEvents < ActiveRecord::Migration[7.0]
  def change
    remove_column :events, :image_url, :string
  end
end
