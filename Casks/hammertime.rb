cask "hammertime" do
  version "0.1.7"
  sha256 "cfaa3d4f36eec19f0cb15ff2240e95e0b98828dd8ab87f0916459495eebf88fc"

  url "https://github.com/ethanyxchen/github-maxxer/releases/download/v#{version}/Hammertime-#{version}.zip"
  name "Hammertime"
  desc "Track the pull requests you merge against daily targets"
  homepage "https://github.com/ethanyxchen/github-maxxer"

  depends_on macos: :tahoe

  app "Hammertime.app"

  uninstall quit: "com.ethanyxchen.hammertime"

  zap trash: "~/Library/Application Support/Hammertime"
end
