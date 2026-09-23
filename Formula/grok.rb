class Grok < Formula
  desc "Privacy-hardened fork of xai-org/grok-build"
  homepage "https://github.com/carmilea/grok-build"
  version "1.0.38-s"
  url "https://github.com/carmilea/grok-build/releases/download/fork-1.0.38.1-rc1/grok-1.0.38-s-macos-arm64.tar.gz"
  sha256 "96482aa8140a8a47ce6751b91eb4cf47118252b875b014c8ef7de7519fd74daa"
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
