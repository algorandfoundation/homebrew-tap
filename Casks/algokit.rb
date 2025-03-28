cask "algokit" do
  arch arm: "arm64", intel: "x64"

  version "2.6.2"
  sha256 arm:   "87df3ee5b1ae1cbff56f44bc6691ee62e05db7d2a9cc4d3e39ef3c8c62a7b029",
         intel: "98225b62ab940559fc2412b7dd338269b5d9a966bd8a559700f7fa632372990e"

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
