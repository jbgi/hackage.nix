{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "amazonka-iot"; version = "1.3.5"; };
      license = "LicenseRef-OtherLicense";
      copyright = "Copyright (c) 2013-2015 Brendan Hay";
      maintainer = "Brendan Hay <brendan.g.hay@gmail.com>";
      author = "Brendan Hay";
      homepage = "https://github.com/brendanhay/amazonka";
      url = "";
      synopsis = "Amazon IoT SDK.";
      description = "AWS IoT (Beta)\n__AWS IoT is in beta and is subject to change__\nAWS IoT provides secure, bi-directional communication between\nInternet-connected things (such as sensors, actuators, embedded devices,\nor smart appliances) and the AWS cloud. You can discover your custom\nIoT-Data endpoint to communicate with, configure rules for data\nprocessing and integration with other services, organize resources\nassociated with each thing (Thing Registry), configure logging, and\ncreate and manage policies and credentials to authenticate things.\nFor more information about how AWS IoT works, see the\n<http://docs.aws.amazon.com/iot/latest/developerguide/aws-iot-how-it-works.html Developer Guide>.\n\nThe types from this library are intended to be used with\n<http://hackage.haskell.org/package/amazonka amazonka>, which provides\nmechanisms for specifying AuthN/AuthZ information and sending requests.\n\nUse of lenses is required for constructing and manipulating types.\nThis is due to the amount of nesting of AWS types and transparency regarding\nde/serialisation into more palatable Haskell values.\nThe provided lenses should be compatible with any of the major lens libraries\nsuch as <http://hackage.haskell.org/package/lens lens> or\n<http://hackage.haskell.org/package/lens-family-core lens-family-core>.\n\nSee \"Network.AWS.IoT\" and the <https://aws.amazon.com/iot AWS API Reference>\nto get started.";
      buildType = "Simple";
      };
    components = {
      "library" = { depends = [ (hsPkgs.amazonka-core) (hsPkgs.base) ]; };
      tests = {
        "amazonka-iot-test" = {
          depends = [
            (hsPkgs.amazonka-core)
            (hsPkgs.amazonka-test)
            (hsPkgs.amazonka-iot)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.lens)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.unordered-containers)
            ];
          };
        };
      };
    }