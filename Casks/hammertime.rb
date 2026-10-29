cask "hammertime" do
  version "0.1.16"
  sha256 "575ed5ad001c513ba4e104b43fe10b4c85b8bfbd5be0f3591ab44c82e02d7d5b"

  url "https://github.com/ethanyxchen/Hammertime/releases/download/v#{version}/Hammertime-#{version}.zip"
  name "Hammertime"
  desc "Track the pull requests you merge against daily targets"
  homepage "https://github.com/ethanyxchen/Hammertime"

  depends_on macos: :tahoe

  app "Hammertime.app"

  uninstall quit: "com.ethanyxchen.hammertime"

  zap trash: "~/Library/Application Support/Hammertime"
end
