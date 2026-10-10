cask "hammertime" do
  version "0.1.5"
  sha256 "703ec93978988b60ca693c96b837db392bec42a2bfa47e3d5269fcb2db5de9d8"

  url "https://github.com/ethanyxchen/github-maxxer/releases/download/v#{version}/Hammertime-#{version}.zip"
  name "Hammertime"
  desc "Track the pull requests you merge against daily targets"
  homepage "https://github.com/ethanyxchen/github-maxxer"

  depends_on macos: :tahoe

  app "Hammertime.app"

  uninstall quit: "com.ethanyxchen.hammertime"

  zap trash: "~/Library/Application Support/Hammertime"
end
