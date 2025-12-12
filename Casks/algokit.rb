cask "algokit" do
  arch arm: "arm64", intel: "x64"

  version "2.10.0"
  sha256 arm:   "54eb7435e6a8db104b277afc2d54e286e4a507134afbb7498039e605995bb5ac",
         intel: "bf352ff84ae58f1151ace47c617307742ecaa823af4854adc9ad16f93966abe1"

  url "https://github.com/algorandfoundation/algokit-cli/releases/download/v#{version}/algokit-#{version}-macos_#{arch}-brew.tar.gz"
  name "algokit"
  desc "Algorand development kit command-line interface"
  homepage "https://github.com/algorandfoundation/algokit-cli"

  binary "#{staged_path}/#{token}"
end
