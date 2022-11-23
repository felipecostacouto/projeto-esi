require 'rails_helper'

RSpec.describe Subject, type: :model do
  it 'Inválido sem nome' do
    subject = Subject.new
    subject.teacher = 'Daniel'
    subject.campi = 'EACH'
    expect(subject).not_to be_valid
  end

  it 'Inválido com Nome fora do padrão' do
    subject = Subject.new
    subject.name = '*ESI*'
    subject.teacher = 'Daniel'
    subject.campi = 'EACH'
    expect(subject).not_to be_valid
  end

  it 'Válido com campos preenchido corretamente' do
    subject = Subject.new
    subject.name = 'ESI'
    subject.teacher = 'Daniel'
    subject.campi = 'EACH'
  end
end
