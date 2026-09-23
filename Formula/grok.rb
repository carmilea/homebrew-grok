class Grok < Formula
  desc "Privacy-hardened fork of xai-org/grok-build"
  homepage "https://github.com/carmilea/grok-build"
  version "1.0.38-s"
  url "https://github.com/carmilea/grok-build/releases/download/fork-1.0.38.2/grok-1.0.38-s-macos-arm64.tar.gz"
  sha256 "6c6fd24292eabba4fa368f1d1dccf426416103405405c62987f2dc2c4599f7e0"
  revision 1
  license "Apache-2.0"

  depends_on arch: :arm64

  def install
    bin.install "grok"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/grok --version")
  end

  def caveats
    <<~EOS
      This is carmilea/grok-build, a privacy-hardened fork of xai-org/grok-build:
      telemetry, product-event uploads, and startup phone-home requests are
      hard-disabled. See https://github.com/carmilea/grok-build for details.
    EOS
  end

  test do
    system "#{bin}/grok", "--version"
  end
end
