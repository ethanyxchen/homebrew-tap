cask "hammertime" do
  version "0.1.13"
  sha256 "aa37f37357829f77b26275b6a883aa5b4bfba1c7a9dbfe45667c752cc3278874"

  url "https://github.com/ethanyxchen/Hammertime/releases/download/v#{version}/Hammertime-#{version}.zip"
  name "Hammertime"
  desc "Track the pull requests you merge against daily targets"
  homepage "https://github.com/ethanyxchen/Hammertime"

  depends_on macos: :tahoe

  app "Hammertime.app"

  uninstall quit: "com.ethanyxchen.hammertime"

  zap trash: "~/Library/Application Support/Hammertime"
end
