cask "findle" do
  version "0.2.0"
  sha256 "537668dfc3594575b35fb7be52da429969261e9fae7df3bfda3a7a46cec8a936"

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
