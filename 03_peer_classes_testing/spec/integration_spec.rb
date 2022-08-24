require "diary"
require "secret_diary"

describe "integration" do
  it "fails and raises an error saying diary is locked" do
    diary = Diary.new("contents")
    secret_diary = SecretDiary.new(diary)
    expect { secret_diary.read }.to raise_error "Go away!"
  end

  it "returns the diary contents when diary is unlocked" do
    diary = Diary.new("contents")
    secret_diary = SecretDiary.new(diary)
    secret_diary.unlock
    expect(secret_diary.read).to eq "contents"
  end

  it "fails and raises an error when diaty is locked again" do
    diary = Diary.new("contents")
    secret_diary = SecretDiary.new(diary)
    secret_diary.unlock
    secret_diary.lock
    expect { secret_diary.read }.to raise_error "Go away!"
  end
end
