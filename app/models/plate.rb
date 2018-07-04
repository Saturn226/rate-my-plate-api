class Plate < ApplicationRecord
    belongs_to :user
    acts_as_votable

    def upvotes
        self.votes_for.up#.count
    end

    def downvotes
        self.votes_for.down#.count
    end

    def upvotes_count
        upvotes.count
    end

    def downvotes_count
        downvotes.count
    end
end
