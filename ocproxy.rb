require 'formula'

class Ocproxy < Formula
  homepage 'http://github.com/cernekee/ocproxy'
  url 'http://github.com/cernekee/ocproxy/tarball/v1.50'
  sha256 '8e39d24d2776d83878351f811327007ad8ac287e68a12705d4084df6d2257d44'

  depends_on 'autoconf' => :build
  depends_on 'automake' => :build
  depends_on 'libevent' => :build

  def install
    ENV.deparallelize

    system "./autogen.sh"
    system "./configure", "--prefix=#{prefix}"
    system "make install"
  end
end
