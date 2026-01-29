cask "algokit" do
  arch arm: "arm64", intel: "x64"

  version "2.10.1"
  sha256 arm:   "81f6c146af72321302537162418fbe0d35bb1c8428c85de3180e787be2cf6c5f",
         intel: "41f09455743761ceb031293eb6b74e8aa6b4a5579e91c937d804307d7492766c"

  url "https://github.com/algorandfoundation/algokit-cli/releases/download/v#{version}/algokit-#{version}-macos_#{arch}-brew.tar.gz"
  name "algokit"
  desc "Algorand development kit command-line interface"
  homepage "https://github.com/algorandfoundation/algokit-cli"

  binary "#{staged_path}/#{token}"
end
