require 'spec_helper'

describe Comment do
  it "should always belong to an article" do
      comment = Comment.new
      expect(comment).to_not be valid
  end


  it "should do something complicated" do
    article = FactoryGirl.build(:article)
    FactoryGirl.build(:comment, :article => article)
  end
end