cask "algokit" do
  arch arm: "arm64", intel: "x64"

  version "2.9.0"
  sha256 arm:   "9673c3335ea8a7e6b521581a3b4e8b467a3f85ad516fbf4e569bc5c045a3da6f",
         intel: "8a6df3b761d6590a4767f0654d20cfb4d123e0cc14cc1e49c59de3bd5171fbd1"

  url "https://github.com/algorandfoundation/algokit-cli/releases/download/v#{version}/algokit-#{version}-macos_#{arch}-brew.tar.gz"
  name "algokit"
  desc "Algorand development kit command-line interface"
  homepage "https://github.com/algorandfoundation/algokit-cli"

  binary "#{staged_path}/#{token}"
end
