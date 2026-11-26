cask "hammertime" do
  version "1.2.2"
  sha256 "c9fb3334cc835e9ef762c11c86b211ee6327c9ba8b451ac4135a98805a3ba83f"

  url "https://github.com/ethanyxchen/Hammertime/releases/download/v#{version}/Hammertime-#{version}.zip"
  name "Hammertime"
  desc "Track the pull requests you merge against daily targets"
  homepage "https://github.com/ethanyxchen/Hammertime"

  auto_updates true
  depends_on macos: :tahoe

  app "Hammertime.app"

  uninstall quit: "com.ethanyxchen.hammertime"

  zap trash: "~/Library/Application Support/Hammertime"
end
