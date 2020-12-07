require 'rails_helper'

RSpec.describe User, type: :model do
  describe '#create' do
    it "emailとpasswordが存在すれば登録できること" do
        user = build(:user)
        expect(user).to be_valid
    end
    
    it "emailがない場合は登録できないこと" do
        user = build(:user, email: "")
        user.valid?
        expect(user.errors[:email]).to include("can't be blank")
    end
   
    it "passwordがない場合は登録できないこと" do
        user = build(:user, password: "")
        user.valid?
        expect(user.errors[:password]).to include("can't be blank")
    end
   
    it "重複したemailが存在する場合登録できないこと" do
        user = create(:user)
        another_user = build(:user)
        another_user.valid?
        expect(another_user.errors[:email]).to include("has already been taken")
    end
   
   it "passwordが6文字以上であれば登録できること" do
        user = build(:user, password: "123456", password_confirmation: "123456")
        user.valid?
        expect(user).to be_valid
   end
   
    it "passwordが5文字以下である場合は登録できないこと" do
        user = build(:user, password: "12345", password_confirmation: "12345")
        user.valid?
        expect(user.errors[:password]).to include("is too short (minimum is 6 characters)")
   end
  end
end
