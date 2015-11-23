class Calendar < ActiveRecord::Base
    
    validates :title, presence: true, length: { maximum: 20 }
    validates :startdate, presence: true
    validates :enddate, presence: true
    validates :category, acceptance: true
    validates :category, :presence => { :message => "カテゴリに値が入力されていません。" }
    validates :content, length: { maximum: 100 }
    
    belongs_to :user

end
