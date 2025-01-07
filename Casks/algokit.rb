cask "algokit" do
  arch arm: "arm64", intel: "x64"

  version "2.5.2"
  sha256 arm:   "d386fa953ed057d9e6c6bbd9bb23b748a696bac55a4239be22f26e8ded7a8db4",
         intel: "4dc0c15d49091cff7f6244f5b85fa0f5c78da6bc46e065a7e6f4e7c011deec0c"

  url "https://github.com/algorandfoundation/algokit-cli/releases/download/v#{version}/algokit-#{version}-macos_#{arch}-brew.tar.gz"
  name "algokit"
  desc "Algorand development kit command-line interface"
  homepage "https://github.com/algorandfoundation/algokit-cli"

  binary "#{staged_path}/#{token}"

  postflight do
    set_permissions "#{staged_path}/#{token}", "0755"
  end

  uninstall delete: "/usr/local/bin/#{token}"
end
