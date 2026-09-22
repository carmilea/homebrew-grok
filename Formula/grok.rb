class Grok < Formula
  desc "Privacy-hardened fork of xai-org/grok-build"
  homepage "https://github.com/carmilea/grok-build"
  version "1.0.38-s"
  url "https://github.com/carmilea/grok-build/releases/download/fork-1.0.38.1-rc1/grok-1.0.38-s-macos-arm64.tar.gz"
  sha256 "PLACEHOLDER-UPDATED-BY-CI"
  license "Apache-2.0"

  depends_on macos: :arm64

  def install
    bin.install "grok"
  end

  caveats <<~EOS
    This is carmilea/grok-build, a privacy-hardened fork of xai-org/grok-build:
    telemetry, product-event uploads, and startup phone-home requests are
    hard-disabled. See https://github.com/carmilea/grok-build for details.
  EOS

  test do
    system "#{bin}/grok", "--version"
  end
end
