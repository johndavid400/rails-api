class CreateSections < ActiveRecord::Migration[6.1]
  def change
    create_table :sections do |t|
      t.string :title
      t.string :subtitle
      t.string :slug
      t.string :videoUrl
      t.string :videoDuration
      t.text :content  
      t.datetime :published_at
      t.timestamps
    end
  end
end
