class Computer

  @@users = {}

  def initialize(username, password)
    @username = username
    @password = password
    @files = {}
    @@users[username] = password
  end

  def create(filename)
    time = Time.now
    @filename = filename
    @files[filename] = time
    puts "A new file has been created by #{@username} with the info #{@files[filename]}"
  end

  def self.get_users
    puts @@users
  end

end

my_computer = Computer.new("Mauro", "12345")
my_computer.create("favorite_song.txt")
Computer.get_users
