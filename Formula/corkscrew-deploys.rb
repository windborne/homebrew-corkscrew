
VERSION = '1.1.2'

class CorkscrewDeploys < Formula
  desc "Deploy and run code on another machine"
  homepage "https://github.com/windborne/corkscrew"
  version VERSION

  if Hardware::CPU.intel?
    url "https://wb-data-public.s3.us-west-2.amazonaws.com/corkscrew/corkscrew-#{VERSION}-osx-x86_64.tar.gz"
    sha256 "ce3d4d480da7b3bee10addb2a614ef1595061d4b2c0193ef7da91ec04a791015"
  else
    url "https://wb-data-public.s3.us-west-2.amazonaws.com/corkscrew/corkscrew-#{VERSION}-osx-arm64.tar.gz"
    sha256 "0850843730ec76e8f52234cb0b599c7727a7bef6f682b1cf8a7a50c6f6851f3b"
  end

  def install
    bin.install "corkscrew"
    lib.install Dir["lib/*"]
  end

  test do
    system "#{bin}/corkscrew", "--version"
  end
end
