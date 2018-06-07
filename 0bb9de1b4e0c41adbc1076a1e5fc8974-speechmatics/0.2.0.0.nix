{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "speechmatics";
          version = "0.2.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "Daisee Pty Ltd";
        maintainer = "jappie.klooster@daisee.com";
        author = "Jappie Klooster";
        homepage = "https://bitbucket.org/daisee/speechmatics-api-client/";
        url = "";
        synopsis = "Speechmatics api client";
        description = "Upload audio files to speechmatics to get a transcription";
        buildType = "Simple";
      };
      components = {
        speechmatics = {
          depends  = [
            hsPkgs.HsOpenSSL
            hsPkgs.aeson
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.http-client
            hsPkgs.http-client-openssl
            hsPkgs.json-autotype
            hsPkgs.lens
            hsPkgs.mime-types
            hsPkgs.text
            hsPkgs.wreq
          ];
        };
        exes = {
          speechmatics = {
            depends  = [
              hsPkgs.SHA
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.mime-types
              hsPkgs.options
              hsPkgs.speechmatics
            ];
          };
        };
        tests = {
          speechmatics-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.hspec
              hsPkgs.neat-interpolation
              hsPkgs.speechmatics
              hsPkgs.text
            ];
          };
        };
      };
    }