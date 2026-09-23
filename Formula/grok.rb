class Grok < Formula
  desc "Privacy-hardened fork of xai-org/grok-build"
  homepage "https://github.com/carmilea/grok-build"
  version "1.0.38-s"
  url "https://github.com/carmilea/grok-build/releases/download/fork-1.0.38.1/grok-1.0.38-s-macos-arm64.tar.gz"
  sha256 "097d46b9cd25876017906d86e4dbf7e6f308c482c34e5966225ad0dbf66d0e18"
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
