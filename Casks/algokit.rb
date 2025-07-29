cask "algokit" do
  arch arm: "arm64", intel: "x64"

  version "2.8.0"
  sha256 arm:   "3830aee5302a7f83ebab905dd261f9a2384f04fc2b13d2652451b52dc057b6ac",
         intel: "fff53abeebe977d5fcafc7ea957c9be22542cdf2fc3cdee48c5e5b7d668292e6"

  url "https://github.com/algorandfoundation/algokit-cli/releases/download/v#{version}/algokit-#{version}-macos_#{arch}-brew.tar.gz"
  name "algokit"
  desc "Algorand development kit command-line interface"
  homepage "https://github.com/algorandfoundation/algokit-cli"

  binary "#{staged_path}/#{token}"
end
