require 'test_helper'

class DiretoriosTest < ActiveSupport::TestCase
  def setup
    # Do nothing
  end

  def teardown
    # Do nothing
  end

  test "diretorios_count" do
    assert_equal 1, Diretorio.count
  end

  test "edit_diretorio" do
    dir = Diretorio.find_by_name('Teste')
    dir.name = 'TesteDir'
    assert_equal true, dir.name == 'TesteDir'
  end

  test "fail_to_edit_diretorio" do
    dir = Diretorio.find_by_name('Teste')
    dir.name = 'Teste#*'
    dir = Diretorio.find_by_name('Test#*')
    assert_equal true, dir.nil?
  end

  test "create_diretorio" do
    Diretorio.create(name:'Test', path:'Testing')
    dir = Diretorio.last
    assert_equal true, dir.name == 'Test'
    assert_equal true, dir.path == 'Testing'
  end

  test "fail_to_create_diretorio" do
    Diretorio.create(name: 'Test**', path:'Test')
    dir = Diretorio.find_by_name('Test**')
    assert_equal true, dir.nil?
  end

  test "delete_diretorio" do
    dir = Diretorio.find_by_name('Teste')
    if(!dir.nil?)
      Diretorio.delete(dir)
      temp = Diretorio.find_by_name('Teste')
      assert_equal true, temp.nil?
    end
  end

  test "fail_to_find_diretorio" do
    dir = Diretorio.find_by_name('Testee')
    assert_equal true, dir.nil?
  end
end
