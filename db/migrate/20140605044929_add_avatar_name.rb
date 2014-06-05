class AddAvatarName < ActiveRecord::Migration
  def change
    rename_column :players, :gravatar_url, :avatar
  end
end
