class Voxd < Formula
  desc "voxd is a HTTP wrapper around macOs' speech synthesis system"
  homepage "https://github.com/blubber/voxd"
  url "https://github.com/blubber/voxd/releases/download/v0.1/voxd"
  sha256 "f3debce572bf9458149b118d6617b0452048030e088d5ed465e91890028cca73"
  version "0.1"

  def install
    bin.install "#{buildpath}/voxd"
  end

  service do
    run opt_bin/"voxd"
    keep_alive true
  end

  def caveats; <<~EOS
    A configuration file can be optionally supplied as $HOME/.config/voxd.json
    An example configuration file is available at:
      https://github.com/blubber/voxd
    EOS
  end
end
