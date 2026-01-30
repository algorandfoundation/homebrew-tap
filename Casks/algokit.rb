cask "algokit" do
  arch arm: "arm64", intel: "x64"

  version "2.10.2"
  sha256 arm:   "f2d91f483da29567d8428968f5304050fd7c2e8e6b5221fbacd323d8fbceaa37",
         intel: "5d309e6b1376820a4c1dbdc98763783fc3a81e4c7013facaf5c95f0b618b7f10"

  url "https://github.com/algorandfoundation/algokit-cli/releases/download/v#{version}/algokit-#{version}-macos_#{arch}-brew.tar.gz"
  name "algokit"
  desc "Algorand development kit command-line interface"
  homepage "https://github.com/algorandfoundation/algokit-cli"

  binary "#{staged_path}/#{token}"
end
