class SecretDiary
  def initialize(diary) # diary is an instance of Diary
    @diary = diary
    @diary_status = false
  end

  def read
    fail "Go away!" unless @diary_status == true

    return @diary.read

    # Raises the error "Go away!" if the diary is locked
    # Returns the diary's contents if the diary is unlocked
    # The diary starts off locked
  end

  def lock
    @diary_status = false
  end

  def unlock
    @diary_status = true
  end
end
