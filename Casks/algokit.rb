cask "algokit" do
  arch arm: "arm64", intel: "x64"

  version "2.9.1"
  sha256 arm:   "5dd2c91d00ca657e8c373df985a84f56521d874ddbb9e8d9699bb02eb4aa6250",
         intel: "8e4004151fd9f203e8cebe87251ad5634ddb5f98e6e18d6b98b3ca50340df79c"

  url "https://github.com/algorandfoundation/algokit-cli/releases/download/v#{version}/algokit-#{version}-macos_#{arch}-brew.tar.gz"
  name "algokit"
  desc "Algorand development kit command-line interface"
  homepage "https://github.com/algorandfoundation/algokit-cli"

  binary "#{staged_path}/#{token}"
end
