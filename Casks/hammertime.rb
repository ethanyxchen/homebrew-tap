cask "hammertime" do
  version "1.2.0"
  sha256 "ad8538d6b3c32ffb2d8acf5a897bedde85b0af30efe7156923586489c985d0c9"

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
