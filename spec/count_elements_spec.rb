require 'spec_helper'

describe CountElements do
  subject { described_class.new(results).perform }

  context 'first dataset' do
    let(:results) { %w[ruby infakt ruby ror ruby ror] }
    let(:expected_hash) { { 'infakt' => 1, 'ror' => 2, 'ruby' => 3 } }

    specify { expect(subject).to eq(expected_hash) }
  end

  context 'second dataset' do
    let(:results) { [0, 4, 2, 1, 0, 2, 5] }
    let(:expected_hash) { { 0 => 2, 1 => 1, 2 => 2, 4 => 1, 5 => 1 } }

    specify { expect(subject).to eq(expected_hash) }
  end

  context 'third dataset' do
    let(:results) { ['car', 'house', 6, 3, 6, 1, 'house', 6, 'house', 1] }
    let(:expected_hash) { { 1 => 2, 'car' => 1, 'house' => 3, 3 => 1, 6 => 3 } }

    specify { expect(subject).to eq(expected_hash) }
  end

  context 'fourth dataset' do
    let(:results) { [' ', ',', '.', '.', '.', ',', '/', '/', ' ', '/'] }
    let(:expected_hash) { { " " => 2, "," => 2, "." => 3, "/" => 3} }

    specify { expect(subject).to eq(expected_hash) }
  end
end
