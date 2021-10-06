# == Schema Information
#
# Table name: users
#
#  id                     :bigint           not null, primary key
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  name                   :string
#  remember_created_at    :datetime
#  reset_password_sent_at :datetime
#  reset_password_token   :string
#  roles                  :integer
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#
# Indexes
#
#  index_users_on_email                 (email) UNIQUE
#  index_users_on_reset_password_token  (reset_password_token) UNIQUE
#
require 'rails_helper'

RSpec.describe User, type: :model do
  describe '#is_level_4_student?' do
    it 'checks if student is level 4' do
      user = User.new(id: 1,email: "abc@sheffield.ac.uk",name:"abc", password:"123", roles:3)
      expect(user.is_level_4_student?).to eq(true)
    end

  end

  describe '#is_level_4_student?' do
    it 'checks if student is level 4' do
      user = User.new(id: 1,email: "abc@sheffield.ac.uk",name:"abc", password:"123", roles:4)
      expect(user.is_level_4_student?).to eq(false)
    end
  end

  describe '#is_level_5_student?' do
    it 'checks if student is level 5' do
      user = User.new(id: 2,email: "abcd@sheffield.ac.uk",name:"abcd", password:"1234", roles:4)
      expect(user.is_level_5_student?).to eq(true)
    end
  end

  describe '#is_level_5_student?' do
    it 'checks if student is level 5' do
      user = User.new(id: 2,email: "abcd@sheffield.ac.uk",name:"abcd", password:"1234", roles:3)
      expect(user.is_level_5_student?).to eq(false)
    end
  end

describe '#is_admin?' do
  it 'checks if user is admin' do
    user = User.new(id: 2,email: "abcd@sheffield.ac.uk",name:"abcd", password:"1234", roles:2)
    expect(user.is_admin?).to eq(true)
  end
end

describe '#is_moderator?' do
  it 'checks if user is moderator' do
    user = User.new(id: 2,email: "abcd@sheffield.ac.uk",name:"abcd", password:"1234", roles:1)
    expect(user.is_admin?).to eq(false)
  end
end

describe '#is_moderator' do
  it 'checks if user is moderator' do
    user = User.new(id: 2,email: "abcd@sheffield.ac.uk",name:"abcd", password:"1234", roles:1)
    expect(user.is_moderator?).to eq(true)
  end
end

describe '#is_moderator' do
  it 'checks if user is moderator' do
    user = User.new(id: 2,email: "abcd@sheffield.ac.uk",name:"abcd", password:"1234", roles:2)
    expect(user.is_moderator?).to eq(false)
  end
end



  describe '#is_level_67_student?' do
    it 'checks if student is level 67' do
      user = User.new(id: 1,email: "abc@sheffield.ac.uk",name:"abc", password:"123", roles:5)
      expect(user.is_level_67_student?).to eq(true)
    end
  end



  describe '#is_level_67_student?' do
    it 'checks if student is level 67' do
      user = User.new(id: 1,email: "abc@sheffield.ac.uk",name:"abc", password:"123", roles:4)
      expect(user.is_level_67_student?).to eq(false)
    end
end

  
end
