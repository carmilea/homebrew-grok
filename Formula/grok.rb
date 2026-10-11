class Grok < Formula
  desc "Privacy-hardened fork of xai-org/grok-build"
  homepage "https://github.com/carmilea/grok-build"
  url "https://github.com/carmilea/grok-build/releases/download/fork-1.0.45.4/grok-1.0.45-s-macos-arm64.tar.gz"
  version "1.0.45-s"
  sha256 "26a50aa4d0d9b0e81c568217685de320eea85fdc43e12f1359044cc8088e437e"
  license "Apache-2.0"
  revision 3

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
