require 'rails_helper'

RSpec.describe Ticket, type: :model do

  context 'when has invalid parameters' do
    it "is invalid without title" do
      @ticket = FactoryGirl.build(:ticket, titulo: nil)
      expect(@ticket).to_not be_valid
    end
  end

  context 'when has valid parameters' do
    before(:each) do
      @ticket = FactoryGirl.create(:ticket)
    end

    it "has a valid factory" do

      expect(@ticket).to be_valid
    end

    it "has a Status instance and it's pending" do
      expect(@ticket.status).to be_a(Status)
      expect(@ticket.status.nome).to eq('Pendente')
    end

    it 'has a User instance with a name' do
      expect(@ticket.user).to be_a(User)
      expect(@ticket.user.nome).to eq('Rodrigo')
    end
  end
end
