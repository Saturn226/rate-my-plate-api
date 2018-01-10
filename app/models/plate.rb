class Plate < ApplicationRecord
    belongs_to :user
    acts_as_votable

    def upvote_count
        self.votes_for.up.count
    end

    def downvote_count
        self.votes_for.down.count
    end
end
