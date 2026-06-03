cask "findle" do
  version "0.2.0"
  sha256 "097eab159216a147352154b55bb6655dd053c745a1754d69f7f934064bf4edfd"

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
