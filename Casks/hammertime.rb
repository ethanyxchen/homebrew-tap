cask "hammertime" do
  version "0.1.2"
  sha256 "50c4f75af3077cfa212dcc2007eb957394324878b0b9cd067b59d9bdf3bb3625"

  url "https://github.com/ethanyxchen/github-maxxer/releases/download/v#{version}/Hammertime-#{version}.zip"
  name "Hammertime"
  desc "Track the pull requests you merge against daily targets"
  homepage "https://github.com/ethanyxchen/github-maxxer"

  depends_on macos: :tahoe

  app "Hammertime.app"

  uninstall quit: "com.ethanyxchen.hammertime"

  zap trash: "~/Library/Application Support/Hammertime"
end
