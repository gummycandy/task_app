class Post < ApplicationRecord
    validates :title, presence: true
    validates :start_day, presence: true
    validates :end_day, presence: true
    validate :end_day_check
    validate :date_order_check
      
        
    def end_day_check
        unless end_day == nil
            errors.add(:end_day, "は今日以降の日付で選択してください") if end_day < Date.today
        end
    end
    
    def date_order_check
        unless end_day == nil
            errors.add(:end_day, "は開始日より後ろにしてください") unless
            self.start_day && self.start_day <= self.end_day
        end
    end
    
end
