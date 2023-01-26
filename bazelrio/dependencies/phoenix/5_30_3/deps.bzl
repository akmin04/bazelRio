load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive", "http_jar")
load("@bazel_tools//tools/build_defs/repo:jvm.bzl", "jvm_maven_import_external")
load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazelrio//:deps_utils.bzl", "cc_library_headers", "cc_library_shared", "cc_library_sources", "cc_library_static")

def setup_phoenix_5_30_3_dependencies():
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_api-cpp_headers",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/api-cpp/5.30.3/api-cpp-5.30.3-headers.zip",
        sha256 = "bbf59aca82c4bb136011dbd30ea5478109de3ec7b5cd8eb41a6b6f819516dead",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_api-cpp-sim_headers",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/sim/api-cpp-sim/5.30.3/api-cpp-sim-5.30.3-headers.zip",
        sha256 = "3f443b2978d393dc818df1799173a0639ba54fd9f40df5cdf17b87c5c113301b",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_cci_headers",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/cci/5.30.3/cci-5.30.3-headers.zip",
        sha256 = "89307ef60c0a1504ab6dec7710549fe6ee0980177defa3f23fd3825f1348ec32",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_cci-sim_headers",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/sim/cci-sim/5.30.3/cci-sim-5.30.3-headers.zip",
        sha256 = "89307ef60c0a1504ab6dec7710549fe6ee0980177defa3f23fd3825f1348ec32",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_sim_simcancoder_headers",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/sim/simCANCoder/23.0.1/simCANCoder-23.0.1-headers.zip",
        sha256 = "c5078f604b3f9480f860560dc3d9d31a54e3c41045ead04440bd02ea24ade1ab",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_sim_simpigeonimu_headers",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/sim/simPigeonIMU/23.0.1/simPigeonIMU-23.0.1-headers.zip",
        sha256 = "c5078f604b3f9480f860560dc3d9d31a54e3c41045ead04440bd02ea24ade1ab",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_sim_simprocancoder_headers",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/sim/simProCANcoder/23.0.1/simProCANcoder-23.0.1-headers.zip",
        sha256 = "c5078f604b3f9480f860560dc3d9d31a54e3c41045ead04440bd02ea24ade1ab",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_sim_simpropigeon2_headers",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/sim/simProPigeon2/23.0.1/simProPigeon2-23.0.1-headers.zip",
        sha256 = "c5078f604b3f9480f860560dc3d9d31a54e3c41045ead04440bd02ea24ade1ab",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_sim_simprotalonfx_headers",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/sim/simProTalonFX/23.0.1/simProTalonFX-23.0.1-headers.zip",
        sha256 = "c5078f604b3f9480f860560dc3d9d31a54e3c41045ead04440bd02ea24ade1ab",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_sim_simtalonfx_headers",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/sim/simTalonFX/23.0.1/simTalonFX-23.0.1-headers.zip",
        sha256 = "c5078f604b3f9480f860560dc3d9d31a54e3c41045ead04440bd02ea24ade1ab",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_sim_simtalonsrx_headers",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/sim/simTalonSRX/23.0.1/simTalonSRX-23.0.1-headers.zip",
        sha256 = "c5078f604b3f9480f860560dc3d9d31a54e3c41045ead04440bd02ea24ade1ab",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_sim_simvictorspx_headers",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/sim/simVictorSPX/23.0.1/simVictorSPX-23.0.1-headers.zip",
        sha256 = "c5078f604b3f9480f860560dc3d9d31a54e3c41045ead04440bd02ea24ade1ab",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_tools_headers",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/tools/23.0.1/tools-23.0.1-headers.zip",
        sha256 = "74d79bb3e739d9d6b87311656b0530aaefc211952cc647a3d57776a0cee9efce",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_sim_tools-sim_headers",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/sim/tools-sim/23.0.1/tools-sim-23.0.1-headers.zip",
        sha256 = "74d79bb3e739d9d6b87311656b0530aaefc211952cc647a3d57776a0cee9efce",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_wpiapi-cpp_headers",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/wpiapi-cpp/5.30.3/wpiapi-cpp-5.30.3-headers.zip",
        sha256 = "ebc69d4b1f1f868dcb0ac297cffdb270a42f6293b5239e2b044d69140a3133fa",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_wpiapi-cpp-sim_headers",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/sim/wpiapi-cpp-sim/5.30.3/wpiapi-cpp-sim-5.30.3-headers.zip",
        sha256 = "53bf4769a89ab04f2b0414f3d9756cd2467d1726b42891d89bd02c671237723b",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_api-cpp_windowsx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/api-cpp/5.30.3/api-cpp-5.30.3-windowsx86-64.zip",
        sha256 = "148da705853d2b89bc3b0fe727ac4e5ad895864bc385dff72976b15f5cd6891d",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_api-cpp_linuxx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/api-cpp/5.30.3/api-cpp-5.30.3-linuxx86-64.zip",
        sha256 = "d89c0aec08d0433f1f1e4488945948ea18882d7988f00ce8f7842d6f88f5cf55",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_api-cpp_linuxathena",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/api-cpp/5.30.3/api-cpp-5.30.3-linuxathena.zip",
        sha256 = "518a69563e306b0dbe555ae5bf7040301345474a78b4910bba881238f4cbadff",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_api-cpp-sim_windowsx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/sim/api-cpp-sim/5.30.3/api-cpp-sim-5.30.3-windowsx86-64.zip",
        sha256 = "52001726eded0e25935f306249ae1eeb3e3bc991de6b6fd85c910666d5abc2a8",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_api-cpp-sim_linuxx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/sim/api-cpp-sim/5.30.3/api-cpp-sim-5.30.3-linuxx86-64.zip",
        sha256 = "0c33bac3e345dc1aad5ebc3371c4a4ed27d428fbd44a0195331db90ecec5a45a",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_api-cpp-sim_osxuniversal",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/sim/api-cpp-sim/5.30.3/api-cpp-sim-5.30.3-osxuniversal.zip",
        sha256 = "f050957758306c2a498dfdfd3d52435a2f9c2ad85a33419ae2b48080cdafa557",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_cci_windowsx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/cci/5.30.3/cci-5.30.3-windowsx86-64.zip",
        sha256 = "7154de07b39c22822f4a09ad6d257da971b0402817a71df0cd1189c557a2d5d3",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_cci_linuxx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/cci/5.30.3/cci-5.30.3-linuxx86-64.zip",
        sha256 = "998cdd33f9d07163066792684946fedfa2703f8e974b01886567536155fc672b",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_cci_linuxathena",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/cci/5.30.3/cci-5.30.3-linuxathena.zip",
        sha256 = "b74b3f96fd208389c822d2d04d65da1b3948287996ff45e1cbe852043291c13a",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_cci-sim_windowsx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/sim/cci-sim/5.30.3/cci-sim-5.30.3-windowsx86-64.zip",
        sha256 = "6dfc0c6a064926d5e2d827bd8f80f697a8da86f12b0023d279049a408da8930a",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_cci-sim_linuxx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/sim/cci-sim/5.30.3/cci-sim-5.30.3-linuxx86-64.zip",
        sha256 = "5c3d4f41a40d02346419bfc25c4f5dd656252516fbd577ee1f6a2936884aeb18",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_cci-sim_osxuniversal",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/sim/cci-sim/5.30.3/cci-sim-5.30.3-osxuniversal.zip",
        sha256 = "6e5156a627865f378ef0b4fcb2af52af8049f0be64a773f4463e15471be5c917",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_sim_simcancoder_windowsx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/sim/simCANCoder/23.0.1/simCANCoder-23.0.1-windowsx86-64.zip",
        sha256 = "95e6da8a779e372b02f16991f8df62ee9b3e1369d28a8ea945722a65b3e4930e",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_sim_simcancoder_linuxx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/sim/simCANCoder/23.0.1/simCANCoder-23.0.1-linuxx86-64.zip",
        sha256 = "2a55b95a1ce3c00f76077837e1d2e548e5386a3c686c92c2d3d332e510f04bca",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_sim_simcancoder_osxuniversal",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/sim/simCANCoder/23.0.1/simCANCoder-23.0.1-osxuniversal.zip",
        sha256 = "caa0bb8f57dad213e763861ed397d394a967a4c24c3e76bf1c0cd0718208acd8",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_sim_simpigeonimu_windowsx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/sim/simPigeonIMU/23.0.1/simPigeonIMU-23.0.1-windowsx86-64.zip",
        sha256 = "a8ca3e9317266ab18282a586d84398a9b63b52a7f4f67f6022bcde8770186007",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_sim_simpigeonimu_linuxx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/sim/simPigeonIMU/23.0.1/simPigeonIMU-23.0.1-linuxx86-64.zip",
        sha256 = "59b160eef3281d36086e33e218f335d18348ad64afc3b360f5b55e24be135775",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_sim_simpigeonimu_osxuniversal",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/sim/simPigeonIMU/23.0.1/simPigeonIMU-23.0.1-osxuniversal.zip",
        sha256 = "ba7848fc04b79ff592681dbea83b5fc1aac179f4ac35183d01bfa7ba45a196e5",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_sim_simprocancoder_windowsx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/sim/simProCANcoder/23.0.1/simProCANcoder-23.0.1-windowsx86-64.zip",
        sha256 = "0f9698ddbfcdd94c88825114759ed802065cc801bf74d0156cc2c700c7bbbc49",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_sim_simprocancoder_linuxx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/sim/simProCANcoder/23.0.1/simProCANcoder-23.0.1-linuxx86-64.zip",
        sha256 = "f08e3293f72d320a0043f5a8f2659ce61e4734ce174c6852bae52577c1394920",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_sim_simprocancoder_osxuniversal",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/sim/simProCANcoder/23.0.1/simProCANcoder-23.0.1-osxuniversal.zip",
        sha256 = "5b3767142b3e93ff179d1571a497c2857ed433e31b009b13505a3c7299b6d78f",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_sim_simpropigeon2_windowsx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/sim/simProPigeon2/23.0.1/simProPigeon2-23.0.1-windowsx86-64.zip",
        sha256 = "b5c7d15d274140952ed775522e7f7a2cfee677b22dbf7030f2d0912b15f84649",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_sim_simpropigeon2_linuxx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/sim/simProPigeon2/23.0.1/simProPigeon2-23.0.1-linuxx86-64.zip",
        sha256 = "d45e40e4c7d5d8414c6177f43749f55e252b0a9e8a6da92a6d868b5b10ec0e64",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_sim_simpropigeon2_osxuniversal",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/sim/simProPigeon2/23.0.1/simProPigeon2-23.0.1-osxuniversal.zip",
        sha256 = "dc0510dfb5c9698f48f766b7fd440d42ddc77f13f6816b0b59ed7cb2ef5eda17",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_sim_simprotalonfx_windowsx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/sim/simProTalonFX/23.0.1/simProTalonFX-23.0.1-windowsx86-64.zip",
        sha256 = "386e361c353682f2a88cb72777e75b7016517cb7ee1437fcdc2c5cf27c7c1c9d",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_sim_simprotalonfx_linuxx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/sim/simProTalonFX/23.0.1/simProTalonFX-23.0.1-linuxx86-64.zip",
        sha256 = "7a2016105d5e9113bed770fd2176888141b8b22743afe3e2cc3648e88b24fb51",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_sim_simprotalonfx_osxuniversal",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/sim/simProTalonFX/23.0.1/simProTalonFX-23.0.1-osxuniversal.zip",
        sha256 = "486f43bb4d61d8531814a7854e899b5e345b055975def5616703aba48aaa4e19",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_sim_simtalonfx_windowsx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/sim/simTalonFX/23.0.1/simTalonFX-23.0.1-windowsx86-64.zip",
        sha256 = "b72ccade092e6b10cdf95da94d927ede96b1e7d6e815427ae73dd470a0c63650",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_sim_simtalonfx_linuxx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/sim/simTalonFX/23.0.1/simTalonFX-23.0.1-linuxx86-64.zip",
        sha256 = "659090a8b04b7939bf98d5c431584c42a138517cbe694c499adefed782420023",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_sim_simtalonfx_osxuniversal",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/sim/simTalonFX/23.0.1/simTalonFX-23.0.1-osxuniversal.zip",
        sha256 = "cad92c7c03cffe0b829d4bdb58158e5d38098f24c7a3ef3890722753526aa5f2",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_sim_simtalonsrx_windowsx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/sim/simTalonSRX/23.0.1/simTalonSRX-23.0.1-windowsx86-64.zip",
        sha256 = "be7d4f94901bc8fda18bc2ed03aaa92360933166ad60f5082205d0c2fdf3b685",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_sim_simtalonsrx_linuxx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/sim/simTalonSRX/23.0.1/simTalonSRX-23.0.1-linuxx86-64.zip",
        sha256 = "6624ce0778d311d7f84639fc090017c9221f034aa6d8d4082c6420fd353c64a0",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_sim_simtalonsrx_osxuniversal",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/sim/simTalonSRX/23.0.1/simTalonSRX-23.0.1-osxuniversal.zip",
        sha256 = "d5b1282e1671e0f5e6ffe2ba10cc83300e3800ceccd19c81959ccf0e8e341b98",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_sim_simvictorspx_windowsx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/sim/simVictorSPX/23.0.1/simVictorSPX-23.0.1-windowsx86-64.zip",
        sha256 = "444fd3d66c5c4a9d79ee978b4830e10431f72efba20950f735f8b906dfd68ca4",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_sim_simvictorspx_linuxx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/sim/simVictorSPX/23.0.1/simVictorSPX-23.0.1-linuxx86-64.zip",
        sha256 = "b268e7a0b613ca83d875c3bda2720a851db68bdf44d22e548d5794ad924d15e0",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_sim_simvictorspx_osxuniversal",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/sim/simVictorSPX/23.0.1/simVictorSPX-23.0.1-osxuniversal.zip",
        sha256 = "727e04de4571944edc2a71d2dbacbf50d4258eb200838ffa4d86bd7cf6b8b990",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_tools_windowsx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/tools/23.0.1/tools-23.0.1-windowsx86-64.zip",
        sha256 = "8829c04b6c4703b20ac435974d300c9133dbc32ae8bba9ddb6be151740ac6aff",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_tools_linuxx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/tools/23.0.1/tools-23.0.1-linuxx86-64.zip",
        sha256 = "ca427451101fa1b679f78e6ae577e680aaf250a18fdd9faf6690a0967f56f7f1",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_tools_linuxathena",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/tools/23.0.1/tools-23.0.1-linuxathena.zip",
        sha256 = "1791b35fdf76aa08ad120e4d689d9440bd386542f63f5c44e4047a06e2e05b9a",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_sim_tools-sim_windowsx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/sim/tools-sim/23.0.1/tools-sim-23.0.1-windowsx86-64.zip",
        sha256 = "77f809b5af6998d5be557b9329667b73f08bd7172b76d74d8200f8d44c27f781",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_sim_tools-sim_linuxx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/sim/tools-sim/23.0.1/tools-sim-23.0.1-linuxx86-64.zip",
        sha256 = "9a51be1b60ecdc4eea0c7da6eb577292d902b68641ce2aa0aec42a79ea79c8cb",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_sim_tools-sim_osxuniversal",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/sim/tools-sim/23.0.1/tools-sim-23.0.1-osxuniversal.zip",
        sha256 = "8ca9a8778e532af9f087161feba1ed2317baf04c1d1b35975e0776d655ff02cb",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_wpiapi-cpp_windowsx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/wpiapi-cpp/5.30.3/wpiapi-cpp-5.30.3-windowsx86-64.zip",
        sha256 = "3583028bfd8fb47c3a74b1a70faaeb086bc463defa3d74c46979897f0d6f3ace",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_wpiapi-cpp_linuxx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/wpiapi-cpp/5.30.3/wpiapi-cpp-5.30.3-linuxx86-64.zip",
        sha256 = "885f56af7a3cab1394d3e5b4bb483d64e0304fe3507ebb64de9e74cb020ec726",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_wpiapi-cpp_linuxathena",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/wpiapi-cpp/5.30.3/wpiapi-cpp-5.30.3-linuxathena.zip",
        sha256 = "132e88ddff5cf12e4d46c6c6106847792842470e6d963f16fd286031c8312de4",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_wpiapi-cpp-sim_windowsx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/sim/wpiapi-cpp-sim/5.30.3/wpiapi-cpp-sim-5.30.3-windowsx86-64.zip",
        sha256 = "3c5baf3707bc570191b93149eb409bf1448db7670ce516ef260bcd446b459fd8",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_wpiapi-cpp-sim_linuxx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/sim/wpiapi-cpp-sim/5.30.3/wpiapi-cpp-sim-5.30.3-linuxx86-64.zip",
        sha256 = "baa1b378fabfa80bd1caf951298e88ffc7adcc21ad5f18ac8d3d5a691c72cbca",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_wpiapi-cpp-sim_osxuniversal",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/sim/wpiapi-cpp-sim/5.30.3/wpiapi-cpp-sim-5.30.3-osxuniversal.zip",
        sha256 = "a269eea3f7f212656c7b2dc11b3a1274a6e290c60735cd92d6aa8436707a1a00",
        build_file_content = cc_library_shared,
    )
    maybe(
        jvm_maven_import_external,
        name = "__bazelrio_com_ctre_phoenix_api-java",
        artifact = "com.ctre.phoenix:api-java:5.30.3",
        artifact_sha256 = "123c5254cd19320def5d12e13bbe08da041a9bc50ad4d49dcb3d414762c72f85",
        server_urls = ["https://maven.ctr-electronics.com/release"],
    )
    maybe(
        jvm_maven_import_external,
        name = "__bazelrio_com_ctre_phoenix_wpiapi-java",
        artifact = "com.ctre.phoenix:wpiapi-java:5.30.3",
        artifact_sha256 = "419076bb97b2fbeaaea396903cca472403847e11bcf3f0bd769bc479b2cf575e",
        server_urls = ["https://maven.ctr-electronics.com/release"],
    )