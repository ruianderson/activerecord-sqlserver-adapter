require 'cases/helper_sqlserver'
require 'models/post'
require 'models/comment'
require 'models/author'

class EagerAssociationTestSqlserver < ActiveRecord::TestCase
end

class EagerAssociationTest < ActiveRecord::TestCase

  COERCED_TESTS = [:test_count_with_include]

  include ARTest::Sqlserver::CoercedTest

  fixtures :posts, :comments, :authors

  def test_coerced_count_with_include
    assert_equal 3, authors(:david).posts_with_comments.where("len(comments.body) > 15").references(:comments).count
  end


end
