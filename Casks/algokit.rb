cask "algokit" do
  arch arm: "arm64", intel: "x64"

  version "2.6.1"
  sha256 arm:   "da531a3c2a7d7fddc94f289ab61590b7e0232e295e68446a74050883afdad538",
         intel: "6c39282433337298f5b2cbeac5391881ad2e5efb4249a00beac4dce0cc60e845"

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
