class Proxima < Formula
  desc "proxima is a markup-language-wrapper markup language!"
  homepage "https://github.com/vistormu/proxima"
  version "0.5.3"
  
  on_macos do
    on_arm   do
      url      "https://github.com/vistormu/proxima/releases/download/v#{version}/proxima_#{version}_darwin_arm64.tar.gz"
      sha256   "4127ae40a799988a6711c7355e7a404216b3a5df398bb6cedf5d6b51b87217aa"
    end
    on_intel do
      url      "https://github.com/vistormu/proxima/releases/download/v#{version}/proxima_#{version}_darwin_amd64.tar.gz"
      sha256   "99462b986d347b9ed2cb146cbfa5ecc9d09de5bfbdfbd68209e4b409e1f70b11"
    end
  end
  
  on_linux do
    on_arm   do
      url      "https://github.com/vistormu/proxima/releases/download/v#{version}/proxima_#{version}_linux_arm64.tar.gz"
      sha256   "9f0521da6f0a770fad1b02d1325d9c9d049daf44f027533f1adffa4fd89b6bc9"
    end
    on_intel do
      url      "https://github.com/vistormu/proxima/releases/download/v#{version}/proxima_#{version}_linux_amd64.tar.gz"
      sha256   "c4982a7f306de8c355736a44f8546e94361ddb4b4dedead44b2aea3226dc07fe"
    end
  end
  
  def install
    bin.install "proxima"
  end
  
  test { system bin/"proxima", "--help" }
end

