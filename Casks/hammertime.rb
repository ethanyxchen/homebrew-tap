cask "hammertime" do
  version "1.2.1"
  sha256 "4de9a0787c77fb23456f926914169fcc14b451d6b17b811f9956c9ab5fe72058"

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
