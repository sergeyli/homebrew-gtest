require 'formula'

class Gtest < Formula
  desc "Google Test"
  homepage "https://github.com/google/googletest"
  head "git://github.com/google/googletest.git", :using => :git

  stable do
    url "https://github.com/google/googletest/archive/release-1.8.1.tar.gz"
    sha256 "9bf1fe5182a604b4135edc1a425ae356c9ad15e9b23f9f12a02e80184c3a249c"
  end

  depends_on "cmake" => :build

  def install
    mkdir "build" do
      system "cmake", "..", "-DCMAKE_CXX_STANDARD=11", *std_cmake_args
      system "make", "install"
    end
  end
end
