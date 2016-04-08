class Pcapy < Formula
  url "https://github.com/CoreSecurity/pcapy/archive/0.10.10.tar.gz"
  homepage "https://github.com/CoreSecurity/pcapy"
  sha256 "3447539a8516ae1908475641a80ffa12f6986a7635796fd4cf56b22780bb6e89"

  def install
    system "python", *Language::Python.setup_install_args(prefix)
  end
end
