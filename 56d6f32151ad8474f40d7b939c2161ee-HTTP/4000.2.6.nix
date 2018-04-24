{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      old-base = false;
      mtl1 = false;
      warn-as-error = false;
      network23 = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "HTTP";
          version = "4000.2.6";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Ganesh Sittampalam <http@projects.haskell.org>";
        author = "Warrick Gray <warrick.gray@hotmail.com>";
        homepage = "https://github.com/haskell/HTTP";
        url = "";
        synopsis = "A library for client-side HTTP";
        description = "The HTTP package supports client-side web programming in Haskell. It lets you set up\nHTTP connections, transmitting requests and processing the responses coming back, all\nfrom within the comforts of Haskell. It's dependent on the network package to operate,\nbut other than that, the implementation is all written in Haskell.\n\nA basic API for issuing single HTTP requests + receiving responses is provided. On top\nof that, a session-level abstraction is also on offer  (the @BrowserAction@ monad);\nit taking care of handling the management of persistent connections, proxies,\nstate (cookies) and authentication credentials required to handle multi-step\ninteractions with a web server.\n\nThe representation of the bytes flowing across is extensible via the use of a type class,\nletting you pick the representation of requests and responses that best fits your use.\nSome pre-packaged, common instances are provided for you (@ByteString@, @String@.)\n\nHere's an example use:\n\n>\n>    do\n>      rsp <- Network.HTTP.simpleHTTP (getRequest \"http://www.haskell.org/\")\n>              -- fetch document and return it (as a 'String'.)\n>      fmap (take 100) (getResponseBody rsp)\n>\n>    do\n>      (_, rsp)\n>         <- Network.Browser.browse \$ do\n>               setAllowRedirects True -- handle HTTP redirects\n>               request \$ getRequest \"http://www.haskell.org/\"\n>      return (take 100 (rspBody rsp))";
        buildType = "Simple";
      };
      components = {
        HTTP = {
          depends  = (([
            hsPkgs.base
            hsPkgs.network
            hsPkgs.parsec
          ] ++ (if _flags.old-base
            then [ hsPkgs.base ]
            else [
              hsPkgs.base
              hsPkgs.array
              hsPkgs.old-time
              hsPkgs.bytestring
            ])) ++ [
            hsPkgs.mtl
          ]) ++ pkgs.lib.optional system.isWindows hsPkgs.Win32;
        };
        tests = {
          test = {
            depends  = [
              hsPkgs.HTTP
              hsPkgs.HUnit
              hsPkgs.httpd-shed
              hsPkgs.mtl
              hsPkgs.bytestring
              hsPkgs.case-insensitive
              hsPkgs.deepseq
              hsPkgs.http-types
              hsPkgs.conduit
              hsPkgs.wai
              hsPkgs.warp
              hsPkgs.pureMD5
              hsPkgs.base
              hsPkgs.network
              hsPkgs.split
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
            ];
            build-tools = [ hsPkgs.ghc ];
          };
        };
      };
    }