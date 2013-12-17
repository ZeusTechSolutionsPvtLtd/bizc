class CreateStep2s < ActiveRecord::Migration
  def change
    create_table :step2s do |t|
      t.string :source_type
      t.string :source_location
      t.string :data_sample
      t.string :source_info
      t.string :multiple_source

      t.timestamps
    end
  end
end
