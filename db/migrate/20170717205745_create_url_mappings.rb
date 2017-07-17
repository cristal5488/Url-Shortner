class CreateUrlMappings < ActiveRecord::Migration[5.1]
  def change
    create_table :url_mappings do |t|
      t.text :longurl
      t.string :code

      t.timestamps
    end
  end
end
