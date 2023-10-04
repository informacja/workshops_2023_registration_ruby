require 'spec_helper'

describe ValidatePassword do
  subject { described_class }

  context "args: 'Password1!'" do
    specify { expect(subject.new('Password1!').perform).to eq(true) }
  end

  context "args: 'password1!'" do
    specify { expect(subject.new('password1!').perform).to eq(false) }
  end

  context "args: 'Exaaample1!'" do
    specify { expect(subject.new('Exaaample1!').perform).to eq(false) }
  end

  context "args: 'fail'" do
    specify { expect(subject.new('fail').perform).to eq(false) }
  end

  context "args: 'Password1!Password1!Password1!'" do
    specify { expect(subject.new('Password1!Password1!Password1!').perform).to eq(false) }
  end
end
