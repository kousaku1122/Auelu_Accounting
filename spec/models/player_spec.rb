require 'rails_helper'

RSpec.describe Player, type: :model do
    describe '#create' do
        it "uni_num、name、paymentが存在すれば登録できること" do
            player = build(:player)
            expect(player).to be_valid
        end
        
        it "uni_numがない場合は登録できないこと" do
            player = build(:player, uni_num: "")
            player.valid?
            expect(player.errors[:uni_num]).to include("can't be blank")
        end
        
        it "nameがない場合は登録できないこと" do
            player = build(:player, name: "")
            player.valid?
            expect(player.errors[:name]).to include("can't be blank")
        end
        
        it "paymentがない場合は登録できないこと" do
            player = build(:player, payment: "")
            expect(player).to be_invalid
        end
        
        it "重複したuni_numが存在する場合登録できないこと" do
            player = create(:player)
            another_player = build(:player)
            another_player.valid?
            expect(another_player.errors[:uni_num]).to include("has already been taken")
        end
        
        it "uni_numが0以上であれば登録できること" do 
            player = build(:player, uni_num: "0" )
            expect(player).to be_valid
        end
        
        it "uni_numが-1以下であれば登録できるないこと" do 
            player = build(:player, uni_num: "-1")
            expect(player).to be_invalid
        end
        
        it "nameが50文字以下であれば登録できること" do
            player = build(:player, name: "a"*50)
            expect(player).to be_valid
        end
        
        it "nameが51文字以上であれば登録でないこと" do
            player = build(:player, name: "a"*51)
            expect(player).to be_invalid
        end
        
        it "uni_numが0以上であれば登録できること" do 
            player = build(:player, uni_num: "0" )
            expect(player).to be_valid
        end
        
        it "uni_numが-1以下であれば登録できないこと" do 
            player = build(:player, uni_num: "-1")
            expect(player).to be_invalid
        end
        
        it "paymentが12以下であれば登録できること" do 
            player = build(:player, payment: "12" )
            expect(player).to be_valid
        end
        
        it "paymentが14以上であれば登録できないこと" do 
            player = build(:player, payment: "14")
            expect(player).to be_invalid
        end
        
        it "paymentが0以上であれば登録できること" do 
            player = build(:player, payment: "0")
            expect(player).to be_valid
        end
        
        it "paymentが-1以下であれば登録できないこと" do 
            player = build(:player, payment: "-1")
            expect(player).to be_invalid
        end
        
        it "delayが50文字以下であれば登録できること" do
            player = build(:player, delay: "a"*50)
            expect(player).to be_valid
        end
        
        it "delayが51文字以上であれば登録でないこと" do
            player = build(:player, delay: "a"*51)
            expect(player).to be_invalid
        end
    end
end
