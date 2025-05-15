cask "algokit" do
  arch arm: "arm64", intel: "x64"

  version "2.7.0"
  sha256 arm:   "8e9aa6da289dd47914b8683744694f8b3a036dc5a743ca362b084344fdac2e08",
         intel: "70c4cb40023cd918d3a69a7d28711665071bc88d2cd4a9d62c88a306f5a30ac6"

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
