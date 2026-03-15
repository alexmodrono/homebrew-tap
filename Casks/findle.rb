cask "findle" do
  version "0.1.0"
  sha256 "efcd3782d4bd74e1037f37d5e62f2b6fc24b0bd7d5b45c4e098bbb9ae18dea0d"

  url "https://github.com/alexmodrono/Findle/releases/download/v#{version}/Findle-#{version}.zip"
  name "Findle"
  desc "Sync Moodle course content to your Mac via Finder"
  homepage "https://github.com/alexmodrono/Findle"

  depends_on macos: ">= :sonoma"

  app "Findle.app"

  zap trash: [
    "~/Library/Group Containers/group.es.amodrono.foodle",
    "~/Library/Containers/es.amodrono.foodle",
    "~/Library/Containers/es.amodrono.foodle.file-provider",
  ]
end
