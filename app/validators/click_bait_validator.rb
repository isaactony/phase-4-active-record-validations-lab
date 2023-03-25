class ClickbaitValidator < ActiveModel::Validator
    def validate(record)
      unless record.title&.match?(/(Won't Believe|Secret|Top \d+|Guess)/)
        record.errors.add(:title, 'must be sufficiently clickbait-y')
      end
    end
  end
  