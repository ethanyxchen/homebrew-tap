cask "hammertime" do
  version "0.1.1"
  sha256 "7b663c2c0f71288908c1be98410738d3e26e1794f4fd0cafc9d7a747ba358e2e"

  url "https://github.com/ethanyxchen/github-maxxer/releases/download/v#{version}/Hammertime-#{version}.zip"
  name "Hammertime"
  desc "Track the pull requests you merge against daily targets"
  homepage "https://github.com/ethanyxchen/github-maxxer"

  depends_on macos: :tahoe

  app "Hammertime.app"

  uninstall quit: "com.ethanyxchen.hammertime"

  zap trash: "~/Library/Application Support/Hammertime"
end
