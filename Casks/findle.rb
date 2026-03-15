cask "findle" do
  version "0.1.0"
  sha256 "23dd01f69acbbf4d4bba650b3bfb131214495428a0a15160edb720e9fbbebd51"

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
