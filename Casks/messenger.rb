cask "messenger" do
  version "73.2.121,249985498"
  sha256 "104ee1faf4b00d6c77b9500ddd601f6388f25dd781e5dbb5a2c0b73cce68eaa0"

  url "https://www.facebook.com/messenger/desktop/update/#{version.after_comma}.zip"
  appcast "https://www.facebook.com/messenger/desktop/update/latest-mac.yml"
  name "Facebook Messenger"
  desc "Native desktop app for Messenger (formerly Facebook Messenger)"
  homepage "https://www.messenger.com/desktop"

  app "Messenger.app"

  zap :trash [
    '~/Library/Application Support/Messenger',
    '~/Library/Caches/Messenger',
    '~/Library/Logs/Messenger',
  ]
end
