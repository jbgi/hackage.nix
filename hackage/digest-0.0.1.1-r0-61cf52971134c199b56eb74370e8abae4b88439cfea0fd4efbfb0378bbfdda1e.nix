{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { bytestring-in-base = true; };
    package = {
      specVersion = "1.6";
      identifier = { name = "digest"; version = "0.0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2009 Eugene Kirpichov";
      maintainer = "Eugene Kirpichov <ekirpichov@gmail.com>";
      author = "Eugene Kirpichov <ekirpichov@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Various cryptographic hashes for bytestrings; CRC32 and Adler32 for now.";
      description = "This package provides efficient cryptographic hash implementations for\nstrict and lazy bytestrings. For now, CRC32 and Adler32 are supported;\nthey are implemented as FFI bindings to efficient code from zlib.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ([ (hsPkgs.base) ] ++ (if flags.bytestring-in-base
          then [ (hsPkgs.base) ]
          else [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            ])) ++ (pkgs.lib).optional (!(!system.isWindows)) (hsPkgs.zlib);
        libs = (pkgs.lib).optional (!system.isWindows) (pkgs."z");
        };
      };
    }