cask "algokit" do
  arch arm: "arm64", intel: "x64"

  version "2.6.0"
  sha256 arm:   "df2a6c41977c9c2d461efe2b8719942bc656ab39e2d43fb4547aa5fb6db4caa6",
         intel: "2c35ded98a938084ee13115093a20c328d7513e2dc213e0aefdf8bae78291c26"

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
