class Grok < Formula
  desc "Privacy-hardened fork of xai-org/grok-build"
  homepage "https://github.com/carmilea/grok-build"
  url "https://github.com/carmilea/grok-build/releases/download/fork-1.0.45.3/grok-1.0.45-s-macos-arm64.tar.gz"
  version "1.0.45-s"
  sha256 "8d72221ebac016abef1621180cbe82d64785309fc528c0fcee4d4775ce192ebd"
  license "Apache-2.0"
  revision 2

  depends_on arch: :arm64

  def install
    bin.install "grok"
  end

  def caveats
    <<~EOS
      This is carmilea/grok-build, a privacy-hardened fork of xai-org/grok-build:
      telemetry, product-event uploads, and startup phone-home requests are
      hard-disabled. See https://github.com/carmilea/grok-build for details.
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/grok --version")
  end
end
