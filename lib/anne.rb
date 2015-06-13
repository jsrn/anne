class Anne
  def execute
    files = `git status -s`
    files = files.split("\n").map { |x| x.split(" ").last }
    files = files.join(" ")
    system "rubocop #{files}"
  end
end
