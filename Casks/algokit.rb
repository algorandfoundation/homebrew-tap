cask "algokit" do
  arch arm: "arm64", intel: "x64"

  version "2.7.1"
  sha256 arm:   "4898be4372c609f66e8a685e8d28d71d38dcc3f7c040ac50f7b6d15d30fd8661",
         intel: "c569c5c58de9a0618e3e8e6753c001c0a5bf0b9d67a87ad23db2a7732b5ad295"

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
