{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { libev = false; portable = false; gnutls = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "snap-server"; version = "0.4.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "snap@snapframework.com";
      author = "James Sanders, Gregory Collins, Doug Beardsley";
      homepage = "http://snapframework.com/";
      url = "";
      synopsis = "A fast, iteratee-based, epoll-enabled web server for the Snap Framework";
      description = "Snap is a simple and fast web development framework and server written in\nHaskell. For more information or to download the latest version, you can\nvisit the Snap project website at <http://snapframework.com/>.\n\nThe Snap HTTP server is a high performance, epoll-enabled, iteratee-based web\nserver library written in Haskell. Together with the @snap-core@ library upon\nwhich it depends, it provides a clean and efficient Haskell programming\ninterface to the HTTP protocol.\n\nHigher-level facilities for building web applications (like user/session\nmanagement, component interfaces, data modeling, etc.) are planned but not\nyet implemented, so this release will mostly be of interest for those who:\n\n* need a fast and minimal HTTP API at roughly the same level of abstraction\nas Java servlets, or\n\n* are interested in contributing to the Snap Framework project.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ([
          (hsPkgs.array)
          (hsPkgs.attoparsec)
          (hsPkgs.attoparsec-enumerator)
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.blaze-builder)
          (hsPkgs.blaze-builder-enumerator)
          (hsPkgs.bytestring)
          (hsPkgs.bytestring-nums)
          (hsPkgs.containers)
          (hsPkgs.directory-tree)
          (hsPkgs.enumerator)
          (hsPkgs.filepath)
          (hsPkgs.MonadCatchIO-transformers)
          (hsPkgs.mtl)
          (hsPkgs.murmur-hash)
          (hsPkgs.network)
          (hsPkgs.old-locale)
          (hsPkgs.snap-core)
          (hsPkgs.template-haskell)
          (hsPkgs.time)
          (hsPkgs.transformers)
          (hsPkgs.utf8-string)
          (hsPkgs.unix-compat)
          (hsPkgs.vector)
          (hsPkgs.vector-algorithms)
          (hsPkgs.PSQueue)
          ] ++ (pkgs.lib).optional (!(flags.portable || system.isWindows)) (hsPkgs.unix)) ++ (pkgs.lib).optional (flags.libev) (hsPkgs.hlibev);
        libs = (pkgs.lib).optionals (flags.gnutls) [
          (pkgs."gnutls")
          (pkgs."gcrypt")
          ];
        };
      };
    }