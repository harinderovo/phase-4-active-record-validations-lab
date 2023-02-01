class Post < ApplicationRecord
    validates :title, presence: true
    validates :content, length: { minimum: 250 }
    validates :summary, length: { maximum: 250 }
    validates :category, inclusion: { in: %w(Fiction Non-Fiction) }
    validates :title, format: { with: /Won't Believe|Secret|Top \d|Guess/}
    
    # validates :title,
    # def must_not_have_true_facts exclusion: { without: (True Facts) }

    # validate :true_facts 
    # def capitalize_category_name
    #     self.category = self.category.capitalize
    # end

    # def true_facts
    #     if [/Wont Believe/i, /Secret/i, /Top \d/i, /Guess/i].none? {|pattern| pattern.match(self.title)}
    #     end
    # end


end
