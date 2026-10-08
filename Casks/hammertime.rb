cask "hammertime" do
  version "0.1.0"
  sha256 "2f0f6779127c1df2329b88e8333f9142d5876d05e1c5131d9b10e4e94d0831fc"

  url "https://github.com/ethanyxchen/github-maxxer/releases/download/v#{version}/Hammertime-#{version}.zip"
  name "Hammertime"
  desc "Track the pull requests you merge against daily targets"
  homepage "https://github.com/ethanyxchen/github-maxxer"

  depends_on macos: :tahoe

  app "Hammertime.app"

  uninstall quit: "com.ethanyxchen.hammertime"

  zap trash: "~/Library/Application Support/Hammertime"
end
