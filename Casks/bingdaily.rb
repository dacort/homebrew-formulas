cask "bingdaily" do
    version "0.1.0"
    sha256 "f90c76f303ea4da671ef6e8aeab97698ae271a219fef886bc072bc3ed68735ba"

    url "https://github.com/dacort/bingdaily/releases/download/v#{version}/BingDaily.zip",
        verified: "github.com/dacort/bingdaily/"

    appcast 'https://github.com/dacort/bingdaily/releases.atom'

    depends_on macos: ">= :mojave"

    name "BingDaily"
    desc "Sets your background to the Bing image of the day"
    homepage "https://github.com/dacort/bingdaily"
  
    app "BingDaily.app"
  end