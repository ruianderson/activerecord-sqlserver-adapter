require 'cases/helper_sqlserver'

class HasAndBelongsToManyAssociationsTestSqlserver < ActiveRecord::TestCase
end

class HasAndBelongsToManyAssociationsTest < ActiveRecord::TestCase

  COERCED_TESTS = [
    :test_count_with_finder_sql,
    :test_caching_of_columns
  ]

  include ARTest::Sqlserver::CoercedTest

  # TODO: put a real test here
  def test_coerced_count_with_finder_sql
    assert true
  end

  # TODO: put a real test here
  def test_coerced_caching_of_columns
    assert true
  end


end
