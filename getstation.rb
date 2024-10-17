#                https://rubydoc.brew.sh/Formula
class Getstation < Formula
  desc "One app to rule them all!"
  homepage "https://getstation.com/"
  url "https://github.com/getstation/desktop-app/archive/refs/tags/v3.2.0.tar.gz"
  # version "3.2.0"
  sha256 "5fec26390a5feb088ba21dc72255cfd603bd4d9a576f31346ac22b25729c2091"
  license "Apache-2.0"

  def install
    # Remove unrecognized options if they cause configure to fail
    # https://rubydoc.brew.sh/Formula.html#std_configure_args-instance_method
    system "./configure", "--disable-silent-rules", *std_configure_args
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test getstation`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system bin/"program", "do", "something"`.
    system "false"
  end
end
