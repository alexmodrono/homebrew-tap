cask "findle" do
  version "0.1.2"
  sha256 "59a87aa09565f1e050ffbd2ce780f5d52f95cc21010af13e9f4e71604694e3dc"

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
