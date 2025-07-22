class Proxima < Formula
  desc "proxima is a markup-language-wrapper markup language!"
  homepage "https://github.com/vistormu/proxima"
  version "0.5.2"
  
  on_macos do
    on_arm   do
      url      "https://github.com/vistormu/proxima/releases/download/v#{version}/proxima_#{version}_darwin_arm64.tar.gz"
      sha256   "94a002b106e8e272b54c93b1a94992595eec52f93954d3cefdd8d032f18128e3"
    end
    on_intel do
      url      "https://github.com/vistormu/proxima/releases/download/v#{version}/proxima_#{version}_darwin_amd64.tar.gz"
      sha256   "5755cdce888211199b07ba78f4e7c4ab502c10c0dd58326913c367eca89ef8fb"
    end
  end
  
  on_linux do
    on_arm   do
      url      "https://github.com/vistormu/proxima/releases/download/v#{version}/proxima_#{version}_linux_arm64.tar.gz"
      sha256   "2a22840bf5c6b5a88c91528af3ef65308937f10b273066b92c8fd4c69f5a2a64"
    end
    on_intel do
      url      "https://github.com/vistormu/proxima/releases/download/v#{version}/proxima_#{version}_linux_amd64.tar.gz"
      sha256   "938bc34aded3de4d150971edf2f850620cdf136f3e142546412d6c2a6e0ba1b8"
    end
  end
  
  def install
    bin.install "proxima"
  end
  
  test { system bin/"proxima", "--help" }
end

