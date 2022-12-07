require 'test_helper'

class UsersTest < ActiveSupport::TestCase
  def setup
    # Do nothing
  end

  def teardown
    # Do nothing
  end

  test "users_count" do
    assert_equal 2, User.count
  end

  test "edit_user" do
    user = User.find_by_name('Teste')
    user.name = 'TesteUser'
    user.save
    user = User.find_by_name('TesteUser')
    assert_equal true, user.name == 'TesteUser'
  end

  test "fail_to_edit_user" do
    user = User.find_by_name('Teste')
    user.name = 'Teste#*'
    user = User.find_by_name('Test#*')
    assert_equal true, user.nil?
  end

  test "create_user" do
    User.create(name:'Test', email: 'testemail@usp.br', password: '123')
    user = User.last
    assert_equal true, user.name == 'Test'
    assert_equal true, user.email == 'testemail@usp.br'
  end

  test "fail_to_create_user" do
    User.create(name: 'Test', email: 'emailteste', password: '132')
    user = User.find_by_name('Test**')
    assert_equal true, user.nil?
  end

  test "delete_user" do
    user = User.find_by_name('Teste')
    if(!user.nil?)
        User.delete(user)
        temp = User.find_by_name('Teste')
        assert_equal true, temp.nil?
    end
  end

  test "fail_to_find_user" do
    user = User.find_by_name('Testee')
    assert_equal true, user.nil?
  end
end
