class Numberguess < Formula
  desc "A console based number gussing game"
  homepage "https://mrdev88.github.io/Numberguess/"
  url "https://github.com/Mrdev88/Numberguess/releases/download/1.0.0/Numberguess-1.0.0.jar"
  sha256 "74730008bd2ebeeeaf8cc665eb8a911c86d19dbb7f5c3ea6db18f373cf9a801d"
  license "MIT"

  depends_on "openjdk"

  def install
    libexec.install "numberguess-#{version}.jar"
    bin.write_jar_script libexec/"numberguess-#{version}.jar", "numberguess"
  end

  test do
    assert_match "Numberguess", shell_output("#{bin}/numberguess")
  end
end
