{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { splitbase = true; };
    package = {
      specVersion = "1.23";
      identifier = { name = "wxcore"; version = "0.92.3.0"; };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "wxhaskell-devel@lists.sourceforge.net";
      author = "Daan Leijen";
      homepage = "https://wiki.haskell.org/WxHaskell";
      url = "";
      synopsis = "wxHaskell core";
      description = "wxHaskell is a portable and native GUI library for Haskell. It is\nbuilt on top of wxWidgets, a comprehensive C++ library that is\nportable across all major GUI platforms, including GTK, Windows,\nX11, and MacOS X. This version works with wxWidgets 2.9 and 3.0.\nDistributed under the WXWINDOWS LIBRARY LICENSE. Please see\nLICENSE file, but note that this is essentially LGPL with an\nexception allowing binary distribution of proprietary software.\nThis is the same license as wxWidgets itself uses.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.bytestring)
          (hsPkgs.filepath)
          (hsPkgs.parsec)
          (hsPkgs.stm)
          (hsPkgs.wxc)
          (hsPkgs.wxdirect)
          (hsPkgs.directory)
          (hsPkgs.time)
          ] ++ [ (hsPkgs.array) (hsPkgs.base) (hsPkgs.containers) ];
        frameworks = [ (pkgs."Carbon") ];
        };
      };
    }