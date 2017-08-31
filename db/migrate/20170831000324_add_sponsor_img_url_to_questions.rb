class AddSponsorImgUrlToQuestions < ActiveRecord::Migration[5.1]
  def change
    add_column :questions, :sponsorImgURL, :string
  end
end
