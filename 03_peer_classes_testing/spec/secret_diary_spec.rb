require "secret_diary"

describe SecretDiary do
  it "fails if diary entry is locked" do
    fake_diary = double :diary
    secret_diary = SecretDiary.new(fake_diary)
    expect { secret_diary.read }.to raise_error "Go away!"
  end

  it "returns diary entry if unlocked" do
    fake_diary = double :diary, read: "contents"
    secret_diary = SecretDiary.new(fake_diary)
    secret_diary.unlock
    expect(secret_diary.read).to eq "contents"
  end
end
