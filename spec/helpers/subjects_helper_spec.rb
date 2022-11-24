require 'rails_helper'

# Specs in this file have access to a helper object that includes
# the SubjectsHelper. For example:
#
# describe SubjectsHelper do
#   describe "string concat" do
#     it "concats two strings with spaces" do
#       expect(helper.concat_strings("this","that")).to eq("this that")
#     end
#   end
# end
RSpec.describe SubjectsHelper, type: :helper do
  def create_random_subject
    random_name = "name_" + rand(1000).to_s
    @new_subject = Subject.new({name: random_name, path: "/root/" + random_name})
    @new_subject.save
  end

  def create_random_subject_with_path(path)
    random_name = "name_" + rand(1000).to_s
    @new_subject = Subject.new({name: random_name, path: path})
    @new_subject.save
  end

  def create_random_subject_with_name(name)
    @new_subject = Subject.new({name: name, path: "/root/" + name})
    @new_subject.save
  end

  def create_random_subjects(number_of_subjects)
    i = 0
    while i < number_of_subjects
      create_random_subject
      i += 1
    end
  end
end
