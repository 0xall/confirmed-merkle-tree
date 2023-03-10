// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.17;

library CMTUtils {
    /**
     * Returns merkle root value if all nodes are zero.
     * 
     * if `level_` is zero, it returns 0.
     * if `level_` is not zero, it returns keccak256(zero(level_ - 1), zero(level_ - 1)).
     */
    function zero(uint256 level_) public pure returns (bytes32) {
        if (level_ == 0) return bytes32(0);
        else if (level_ == 1)
            return
                bytes32(
                    0xad3228b676f7d3cd4284a5443f17f1962b36e491b30a40b2405849e597ba5fb5
                );
        else if (level_ == 2)
            return
                bytes32(
                    0xb4c11951957c6f8f642c4af61cd6b24640fec6dc7fc607ee8206a99e92410d30
                );
        else if (level_ == 3)
            return
                bytes32(
                    0x21ddb9a356815c3fac1026b6dec5df3124afbadb485c9ba5a3e3398a04b7ba85
                );
        else if (level_ == 4)
            return
                bytes32(
                    0xe58769b32a1beaf1ea27375a44095a0d1fb664ce2dd358e7fcbfb78c26a19344
                );
        else if (level_ == 5)
            return
                bytes32(
                    0x0eb01ebfc9ed27500cd4dfc979272d1f0913cc9f66540d7e8005811109e1cf2d
                );
        else if (level_ == 6)
            return
                bytes32(
                    0x887c22bd8750d34016ac3c66b5ff102dacdd73f6b014e710b51e8022af9a1968
                );
        else if (level_ == 7)
            return
                bytes32(
                    0xffd70157e48063fc33c97a050f7f640233bf646cc98d9524c6b92bcf3ab56f83
                );
        else if (level_ == 8)
            return
                bytes32(
                    0x9867cc5f7f196b93bae1e27e6320742445d290f2263827498b54fec539f756af
                );
        else if (level_ == 9)
            return
                bytes32(
                    0xcefad4e508c098b9a7e1d8feb19955fb02ba9675585078710969d3440f5054e0
                );
        else if (level_ == 10)
            return
                bytes32(
                    0xf9dc3e7fe016e050eff260334f18a5d4fe391d82092319f5964f2e2eb7c1c3a5
                );
        else if (level_ == 11)
            return
                bytes32(
                    0xf8b13a49e282f609c317a833fb8d976d11517c571d1221a265d25af778ecf892
                );
        else if (level_ == 12)
            return
                bytes32(
                    0x3490c6ceeb450aecdc82e28293031d10c7d73bf85e57bf041a97360aa2c5d99c
                );
        else if (level_ == 13)
            return
                bytes32(
                    0xc1df82d9c4b87413eae2ef048f94b4d3554cea73d92b0f7af96e0271c691e2bb
                );
        else if (level_ == 14)
            return
                bytes32(
                    0x5c67add7c6caf302256adedf7ab114da0acfe870d449a3a489f781d659e8becc
                );
        else if (level_ == 15)
            return
                bytes32(
                    0xda7bce9f4e8618b6bd2f4132ce798cdc7a60e7e1460a7299e3c6342a579626d2
                );
        else if (level_ == 16)
            return
                bytes32(
                    0x2733e50f526ec2fa19a22b31e8ed50f23cd1fdf94c9154ed3a7609a2f1ff981f
                );
        else if (level_ == 17)
            return
                bytes32(
                    0xe1d3b5c807b281e4683cc6d6315cf95b9ade8641defcb32372f1c126e398ef7a
                );
        else if (level_ == 18)
            return
                bytes32(
                    0x5a2dce0a8a7f68bb74560f8f71837c2c2ebbcbf7fffb42ae1896f13f7c7479a0
                );
        else if (level_ == 19)
            return
                bytes32(
                    0xb46a28b6f55540f89444f63de0378e3d121be09e06cc9ded1c20e65876d36aa0
                );
        else if (level_ == 20)
            return
                bytes32(
                    0xc65e9645644786b620e2dd2ad648ddfcbf4a7e5b1a3a4ecfe7f64667a3f0b7e2
                );
        else if (level_ == 21)
            return
                bytes32(
                    0xf4418588ed35a2458cffeb39b93d26f18d2ab13bdce6aee58e7b99359ec2dfd9
                );
        else if (level_ == 22)
            return
                bytes32(
                    0x5a9c16dc00d6ef18b7933a6f8dc65ccb55667138776f7dea101070dc8796e377
                );
        else if (level_ == 23)
            return
                bytes32(
                    0x4df84f40ae0c8229d0d6069e5c8f39a7c299677a09d367fc7b05e3bc380ee652
                );
        else if (level_ == 24)
            return
                bytes32(
                    0xcdc72595f74c7b1043d0e1ffbab734648c838dfb0527d971b602bc216c9619ef
                );
        else if (level_ == 25)
            return
                bytes32(
                    0x0abf5ac974a1ed57f4050aa510dd9c74f508277b39d7973bb2dfccc5eeb0618d
                );
        else if (level_ == 26)
            return
                bytes32(
                    0xb8cd74046ff337f0a7bf2c8e03e10f642c1886798d71806ab1e888d9e5ee87d0
                );
        else if (level_ == 27)
            return
                bytes32(
                    0x838c5655cb21c6cb83313b5a631175dff4963772cce9108188b34ac87c81c41e
                );
        else if (level_ == 28)
            return
                bytes32(
                    0x662ee4dd2dd7b2bc707961b1e646c4047669dcb6584f0d8d770daf5d7e7deb2e
                );
        else if (level_ == 29)
            return
                bytes32(
                    0x388ab20e2573d171a88108e79d820e98f26c0b84aa8b2f4aa4968dbb818ea322
                );
        else if (level_ == 30)
            return
                bytes32(
                    0x93237c50ba75ee485f4c22adf2f741400bdf8d6a9cc7df7ecae576221665d735
                );
        else if (level_ == 31)
            return
                bytes32(
                    0x8448818bb4ae4562849e949e17ac16e0be16688e156b5cf15e098c627c0056a9
                );
        else if (level_ == 32)
            return
                bytes32(
                    0x27ae5ba08d7291c96c8cbddcc148bf48a6d68c7974b94356f53754ef6171d757
                );
        else if (level_ == 33)
            return
                bytes32(
                    0xbf558bebd2ceec7f3c5dce04a4782f88c2c6036ae78ee206d0bc5289d20461a2
                );
        else if (level_ == 34)
            return
                bytes32(
                    0xe21908c2968c0699040a6fd866a577a99a9d2ec88745c815fd4a472c789244da
                );
        else if (level_ == 35)
            return
                bytes32(
                    0xae824d72ddc272aab68a8c3022e36f10454437c1886f3ff9927b64f232df414f
                );
        else if (level_ == 36)
            return
                bytes32(
                    0x27e429a4bef3083bc31a671d046ea5c1f5b8c3094d72868d9dfdc12c7334ac5f
                );
        else if (level_ == 37)
            return
                bytes32(
                    0x743cc5c365a9a6a15c1f240ac25880c7a9d1de290696cb766074a1d83d927816
                );
        else if (level_ == 38)
            return
                bytes32(
                    0x4adcf616c3bfabf63999a01966c998b7bb572774035a63ead49da73b5987f347
                );
        else if (level_ == 39)
            return
                bytes32(
                    0x75786645d0c5dd7c04a2f8a75dcae085213652f5bce3ea8b9b9bedd1cab3c5e9
                );
        else if (level_ == 40)
            return
                bytes32(
                    0xb88b152c9b8a7b79637d35911848b0c41e7cc7cca2ab4fe9a15f9c38bb4bb939
                );
        else if (level_ == 41)
            return
                bytes32(
                    0x0c4e2d8ce834ffd7a6cd85d7113d4521abb857774845c4291e6f6d010d97e318
                );
        else if (level_ == 42)
            return
                bytes32(
                    0x5bc799d83e3bb31501b3da786680df30fbc18eb41cbce611e8c0e9c72f69571c
                );
        else if (level_ == 43)
            return
                bytes32(
                    0xa10d3ef857d04d9c03ead7c6317d797a090fa1271ad9c7addfbcb412e9643d4f
                );
        else if (level_ == 44)
            return
                bytes32(
                    0xb33b1809c42623f474055fa9400a2027a7a885c8dfa4efe20666b4ee27d7529c
                );
        else if (level_ == 45)
            return
                bytes32(
                    0x134d7f28d53f175f6bf4b62faa2110d5b76f0f770c15e628181c1fcc18f970a9
                );
        else if (level_ == 46)
            return
                bytes32(
                    0xc34d24b2fc8c50ca9c07a7156ef4e5ff4bdf002eda0b11c1d359d0b59a546807
                );
        else if (level_ == 47)
            return
                bytes32(
                    0x04dbb9db631457879b27e0dfdbe50158fd9cf9b4cf77605c4ac4c95bd65fc9f6
                );
        else if (level_ == 48)
            return
                bytes32(
                    0xf9295a686647cb999090819cda700820c282c613cedcd218540bbc6f37b01c65
                );
        else if (level_ == 49)
            return
                bytes32(
                    0x67c4a1ea624f092a3a5cca2d6f0f0db231972fce627f0ecca0dee60f17551c5f
                );
        else if (level_ == 50)
            return
                bytes32(
                    0x8fdaeb5ab560b2ceb781cdb339361a0fbee1b9dffad59115138c8d6a70dda9cc
                );
        else if (level_ == 51)
            return
                bytes32(
                    0xc1bf0bbdd7fee15764845db875f6432559ff8dbc9055324431bc34e5b93d15da
                );
        else if (level_ == 52)
            return
                bytes32(
                    0x307317849eccd90c0c7b98870b9317c15a5959dcfb84c76dcc908c4fe6ba9212
                );
        else if (level_ == 53)
            return
                bytes32(
                    0x6339bf06e458f6646df5e83ba7c3d35bc263b3222c8e9040068847749ca8e8f9
                );
        else if (level_ == 54)
            return
                bytes32(
                    0x5045e4342aeb521eb3a5587ec268ed3aa6faf32b62b0bc41a9d549521f406fc3
                );
        else if (level_ == 55)
            return
                bytes32(
                    0x08601d83cdd34b5f7b8df63e7b9a16519d35473d0b89c317beed3d3d9424b253
                );
        else if (level_ == 56)
            return
                bytes32(
                    0x84e35c5d92171376cae5c86300822d729cd3a8479583bef09527027dba5f1126
                );
        else if (level_ == 57)
            return
                bytes32(
                    0x3c5cbbeb3834b7a5c1cba9aa5fee0c95ec3f17a33ec3d8047fff799187f5ae20
                );
        else if (level_ == 58)
            return
                bytes32(
                    0x40bbe913c226c34c9fbe4389dd728984257a816892b3cae3e43191dd291f0eb5
                );
        else if (level_ == 59)
            return
                bytes32(
                    0x14af5385bcbb1e4738bbae8106046e6e2fca42875aa5c000c582587742bcc748
                );
        else if (level_ == 60)
            return
                bytes32(
                    0x72f29656803c2f4be177b1b8dd2a5137892b080b022100fde4e96d93ef8c96ff
                );
        else if (level_ == 61)
            return
                bytes32(
                    0xd06f27061c734d7825b46865d00aa900e5cc3a3672080e527171e1171aa5038a
                );
        else if (level_ == 62)
            return
                bytes32(
                    0x28203985b5f2d87709171678169739f957d2745f4bfa5cc91e2b4bd9bf483b40
                );
        else if (level_ == 63)
            return
                bytes32(
                    0x0a162946e56158bac0673e6dd3bdfdc1e4a0e7744a120fdb640050c8d7abe1c6
                );
        else if (level_ == 64)
            return
                bytes32(
                    0xe2c3ed4052eeb1d60514b4c38ece8d73a27f37fa5b36dcbf338e70de95798caa
                );
        else if (level_ == 65)
            return
                bytes32(
                    0x926bf520e7f453db475da42b994d9447de1f93ee91502a64748e371ed0d1207e
                );
        else if (level_ == 66)
            return
                bytes32(
                    0x7516de2f5995cfafacfd70e1a2067241740388d324343a1eb5e71a10f6bb3298
                );
        else if (level_ == 67)
            return
                bytes32(
                    0xea5466fc04d601ab583158b9c6626cfbb66640d7dc229afaa59fd52ff415180b
                );
        else if (level_ == 68)
            return
                bytes32(
                    0x806f45e88b008f79b47585bdf322be73560cb09d6cac65534e8764bae68a607e
                );
        else if (level_ == 69)
            return
                bytes32(
                    0x8456107723bf83d4a67be05860c6730f8540e49ca0f515344ca83a076c622ff5
                );
        else if (level_ == 70)
            return
                bytes32(
                    0x9837f794827f98f048587b3f2d2b67817b34821097cc60069dd15d62ee52273d
                );
        else if (level_ == 71)
            return
                bytes32(
                    0x0cfbd2781f72955df5e33fc4b304fc362fb1637974575f166768f56da09b1fc9
                );
        else if (level_ == 72)
            return
                bytes32(
                    0x98fdc3f9b823005b507065b58c622aac45efeda41706775668b37a230d8aff9e
                );
        else if (level_ == 73)
            return
                bytes32(
                    0xdf0b5e5db8973fa136e3fba2faabd16677494266a1bdc6b0a8dd7aa187b560b2
                );
        else if (level_ == 74)
            return
                bytes32(
                    0xe67efc7167068b5ca5fddeecd68727dce6b03962f356df86edf32581c5e2f142
                );
        else if (level_ == 75)
            return
                bytes32(
                    0xac692525a14b469fa4c0069eff411001aac6c42d3438f043eb9c3115ec79b546
                );
        else if (level_ == 76)
            return
                bytes32(
                    0x420f9e2a54121eef63530c80909eaed61fffacb8af31074df795e8d16d9d77c0
                );
        else if (level_ == 77)
            return
                bytes32(
                    0x572b220bc6da4cc990acf6cb2e3c8a426408cb90c1298e3869cd55660625b2c3
                );
        else if (level_ == 78)
            return
                bytes32(
                    0x3c2dd835b3f37d72592ee76ebced8b1a15310b824a0d62409263f1594da52171
                );
        else if (level_ == 79)
            return
                bytes32(
                    0x10d9f6bbcc5fcd9cf7a8fcd37a14dc7d719fadbc7f75f98ebebb0719397c50c1
                );
        else if (level_ == 80)
            return
                bytes32(
                    0x3324b6af8c3c1a134906345824ea56115ff5d46e863394edec5b4e6089e99d95
                );
        else if (level_ == 81)
            return
                bytes32(
                    0xd70c6460f498b10eb3a4e739e18f8ed10110d89fb35de350c1e07ff7a300f9fb
                );
        else if (level_ == 82)
            return
                bytes32(
                    0x21dfaa8164b31e8d7c6dc1e1d29344001be3ca30c6446b8903f5476553d94c63
                );
        else if (level_ == 83)
            return
                bytes32(
                    0x0d1064e0c1618c57517fc16a4c2f360cd9089464794d8d907c85d0a286a02da6
                );
        else if (level_ == 84)
            return
                bytes32(
                    0x3c29cc1006a2062d4ac52af124a42a0d937f120260434eb3b234c74fde8256cc
                );
        else if (level_ == 85)
            return
                bytes32(
                    0xba6bd22d33b9fe2010eecc7663983e56d39a9b3a6ef9ba7ad252ad47bb3268c4
                );
        else if (level_ == 86)
            return
                bytes32(
                    0xe5aed5fd2336862ff33e1648d0fa058520dbe003049dfe2433d6f9e3305aa08d
                );
        else if (level_ == 87)
            return
                bytes32(
                    0x7275275a0ea97bde92cd92fdd57d472b4db985d2814951c88373f3bbdca84131
                );
        else if (level_ == 88)
            return
                bytes32(
                    0x17e6b3aa581f972e331445b8c661894178ae8852201c8df34706d1dfb6c92f75
                );
        else if (level_ == 89)
            return
                bytes32(
                    0xaeac70a85397030d84193a54a6e596750e6ab3926b530c127a17c9e24b20b8ce
                );
        else if (level_ == 90)
            return
                bytes32(
                    0xbc12436ba2b2cee8586cc4714522d1866fa0e949bde42ad7d9645cdd8fe58ba0
                );
        else if (level_ == 91)
            return
                bytes32(
                    0x49c40fe4834a5e78ff1a24b37b6e40119f520de73a0cb51479d91d73cdebab8f
                );
        else if (level_ == 92)
            return
                bytes32(
                    0xd8df824c861814311dfc864f00253ace3f6745cbc9562806186f74ac957857c1
                );
        else if (level_ == 93)
            return
                bytes32(
                    0xdbf0c1a5316e43762e4a4ea443b9458e97e8a6e7991421bb2eb1f8f346804d2b
                );
        else if (level_ == 94)
            return
                bytes32(
                    0xa94c80c79017fd7ff0e134c5bdee69867a580cd0aff9f1d67f36a9785c02e920
                );
        else if (level_ == 95)
            return
                bytes32(
                    0x966e6f6d7f644467cfe28dc9f9db78d5a025ad5117fc5641184724590e7654e4
                );
        else if (level_ == 96)
            return
                bytes32(
                    0x929bdd7feee9229494a3eafcc2eeea3a5f51db20f26fdb8a9d13344534d8f1fb
                );
        else if (level_ == 97)
            return
                bytes32(
                    0x81b24f93bde1395b538944e740855d144d996fcebaab447637fb47a7e2b74e20
                );
        else if (level_ == 98)
            return
                bytes32(
                    0x04fa584f5a852d22ed2a1834964da6d267e7bca3d9f3a9513c6c077fec5a9501
                );
        else if (level_ == 99)
            return
                bytes32(
                    0x847eb542c8078dae0f4195c0fc6f00341851f26f58963efc59e51c42bfe63bfc
                );
        else if (level_ == 100)
            return
                bytes32(
                    0x1c541f19d04dfaec842b7d790b185904de53503ea4cc6f78fd3f17549082a6ad
                );
        else if (level_ == 101)
            return
                bytes32(
                    0x1038dde7a37f37bab144466ee29afed96179e9f324aea58d4fe991036f1e2bee
                );
        else if (level_ == 102)
            return
                bytes32(
                    0x7ab4e529bcc484ecfab23aee965ac0c34da462d314b34271a5d54768399d7582
                );
        else if (level_ == 103)
            return
                bytes32(
                    0x58c31c137dc3fc670a6a08bea893f6340e80ad7d5f744c90d87f6fac83ff4410
                );
        else if (level_ == 104)
            return
                bytes32(
                    0x1c6457dfbed1d1982b4303e9c8f2aa8efc3b36a0b73b24007503da3936b9643b
                );
        else if (level_ == 105)
            return
                bytes32(
                    0xaf04efc3d21fa0dbd3d0969859f456be53bc855d667153e96a1077c258f5c47c
                );
        else if (level_ == 106)
            return
                bytes32(
                    0xf64f3afe4825e212efd8d5a09b38c24907154b962e87c13494453fe84360f5af
                );
        else if (level_ == 107)
            return
                bytes32(
                    0x2215baa129243bb2489b96eb079f9fc52ffc5a75fe44e4dc5525480b08cec100
                );
        else if (level_ == 108)
            return
                bytes32(
                    0xc016d66a19e8c03a88c7d2deb1c2266264d0def276668c1530e0b4d0797f5bbd
                );
        else if (level_ == 109)
            return
                bytes32(
                    0x21537b0813609408495d2da79242fd95350051c055b282e880251dc7ef2c8604
                );
        else if (level_ == 110)
            return
                bytes32(
                    0xce0e1a1ebd2dbf3788e4629d9edbe23d0320595cb4a2259968bd183fcfe784f4
                );
        else if (level_ == 111)
            return
                bytes32(
                    0x4e31c84801b7c30a7f6a117b9409ae826a2d8ad0856e90e5325c02a171fd406c
                );
        else if (level_ == 112)
            return
                bytes32(
                    0xf50bbdf427e8002383ef989df23898c8fa2ffd6cfbcda75d9c0f388b97b18a37
                );
        else if (level_ == 113)
            return
                bytes32(
                    0xcdeba8b83fb1b00ad0ea7a73d33d5bfc63abbd0209a3a25fc1c6f612fccd4b9e
                );
        else if (level_ == 114)
            return
                bytes32(
                    0xec750d05b6ca921b7dbfc5c80e427c89d2a0746ffe884391445eb58700548374
                );
        else if (level_ == 115)
            return
                bytes32(
                    0x86d55a186b3d9778b312e59bf6883902072e078e05387853e6a9daae02fa0cc3
                );
        else if (level_ == 116)
            return
                bytes32(
                    0x393908f0cf05a59f17147046a51de9e3378b8988b777f97cd48fbbd76b4d302f
                );
        else if (level_ == 117)
            return
                bytes32(
                    0xbbe6e8eeeca8137f1bffc740264e3f51078373a74aad94bb7e06318d0470fc17
                );
        else if (level_ == 118)
            return
                bytes32(
                    0xaf787d9946676534a6ae3b9052a019e2ec315ea1067c0ccfbe02d93c286c9082
                );
        else if (level_ == 119)
            return
                bytes32(
                    0x8a9cd7b8b7fb4f8bc6892dd9862063dd8049c7a2ba1869e917ac4058c4fafa89
                );
        else if (level_ == 120)
            return
                bytes32(
                    0x962bf93a871bae8ecca539235fd64e11d25ff2892c6b5696984247ca1a06ea6f
                );
        else if (level_ == 121)
            return
                bytes32(
                    0xa61932131d5b86a81122ca2d99d9e8ca85a8823d383e4dd529ce6167b39b1b7a
                );
        else if (level_ == 122)
            return
                bytes32(
                    0x0ffd5897716f91d481cb2fae38c1a715048d24f49b4830ed6e0f38df400aca73
                );
        else if (level_ == 123)
            return
                bytes32(
                    0x80c0f853e1e11595f38eb9ce932e81decad7806b6ce626e64664c63d0161300f
                );
        else if (level_ == 124)
            return
                bytes32(
                    0xfe89d1594b8077eda30ce89ce37de5d40326d13fa59af5b65b056d637086493e
                );
        else if (level_ == 125)
            return
                bytes32(
                    0x94aa8010138ccd8527712e6ba00df632f1cb3a26f8bb1a0148394b4da26b9389
                );
        else if (level_ == 126)
            return
                bytes32(
                    0xb5770e44a24cf2e9c028441c87df80f9cdd26899f2a95d149ae42422491261cf
                );
        else if (level_ == 127)
            return
                bytes32(
                    0xccb2e65c2b007fc48a929459b9e55c7cae243a1768db34f563c2f900d9a4a8ad
                );
        else if (level_ == 128)
            return
                bytes32(
                    0x302898c897fe6821c3034bd415821ea249af1158aa1e01223e9f2f7bdabe2a91
                );
        else if (level_ == 129)
            return
                bytes32(
                    0xe2e77f6be80bc97c465771de809cd1d51d18b0c683396f667dc345a80a013d2f
                );
        else if (level_ == 130)
            return
                bytes32(
                    0xf23cc0a657d3ee03226073d99c4bf36f87579727aa1dde29be3b56081c923ecf
                );
        else if (level_ == 131)
            return
                bytes32(
                    0x3722d7964d96ed3cae69957ac1b17c98ea779c761a4fb85854324839a45adc49
                );
        else if (level_ == 132)
            return
                bytes32(
                    0x9dc68abbb997d022d6856ace0a1ac4658c6a50c2d49f0364122de47b674b6987
                );
        else if (level_ == 133)
            return
                bytes32(
                    0x1b6e7c1bb16fcbd954fb343570f8af720ef19c99a4fd9e25385e55adf44c5479
                );
        else if (level_ == 134)
            return
                bytes32(
                    0xe0d3d80775c56a2c2f851a5d85947481174365da46141c42392743675d6ecd3a
                );
        else if (level_ == 135)
            return
                bytes32(
                    0xb5249b4847705e8d30ab13298e63fe8235be99b919a8227e483ef09061897d5c
                );
        else if (level_ == 136)
            return
                bytes32(
                    0x02e85cd2718f3c51347a437a639cd8bda8012a03116bfce7bc2527a1b4bcbe3e
                );
        else if (level_ == 137)
            return
                bytes32(
                    0xd35124787675617fe78a0d0dc3edb867fe65b9e5ab21bcd397cd8cce804add64
                );
        else if (level_ == 138)
            return
                bytes32(
                    0xc776a4515d2ad878e0efca9b85d835f72d8b4993f9d811d6b166ab5bb9fc8aea
                );
        else if (level_ == 139)
            return
                bytes32(
                    0xb7410701f8479f08f86a2e0b4479244ff3dd5387d58a703f9a015fa4d200d89a
                );
        else if (level_ == 140)
            return
                bytes32(
                    0x8b22cab77687d11e22a9a8a1435d8472151e02a58f76dfc43b72b251d171b88e
                );
        else if (level_ == 141)
            return
                bytes32(
                    0xdd401defb6e37b2cf2a4ac58cb3243b951e4961cee4533bded902fc7a4d8e13c
                );
        else if (level_ == 142)
            return
                bytes32(
                    0xeb9b3ef37f57873243293af6b915c758f5d554efeec10b4aa6b3ddd4950d2e4c
                );
        else if (level_ == 143)
            return
                bytes32(
                    0x1ee5f653417fecfabb729e87549d52fa9c57d04f7aaa5227f751aa80b8dc8cf7
                );
        else if (level_ == 144)
            return
                bytes32(
                    0x724122379fae39a109c8fa30ff3eb5dd2ee9a1a845fd9d2535acd55657410bee
                );
        else if (level_ == 145)
            return
                bytes32(
                    0xdb2eea906c679da20dfaaff3ee92905f9aafa3a7b5a2c01f1f685e362b58acb6
                );
        else if (level_ == 146)
            return
                bytes32(
                    0xe6d4940f6ffabfb754cd67588efd188645caef892949bd5d668258018b56a166
                );
        else if (level_ == 147)
            return
                bytes32(
                    0x7e636ee3d2914157a39963c308e93a492ea86cb782d96e47773775f544cbbed9
                );
        else if (level_ == 148)
            return
                bytes32(
                    0x75921e88680163d20f21b0c5ff61d1b97bdbc6d5c69e746090c2bc6cc27d03ed
                );
        else if (level_ == 149)
            return
                bytes32(
                    0x6e961332a631a45900d5c2111360dcff5631b58c0fc3d3ef8e2d57fed5ca15aa
                );
        else if (level_ == 150)
            return
                bytes32(
                    0x2cceb4b84ce151df2873c66c6e18c38739a46d06b75541af46768215b6d50de9
                );
        else if (level_ == 151)
            return
                bytes32(
                    0xa81341fe8aee600370cc4852b1008aaa846e58ba6356c096e2df04cd976f8e46
                );
        else if (level_ == 152)
            return
                bytes32(
                    0x615afdde2756b92ae1012be3e0393856457c9def83fcf93bebc67f6e9d8ac16c
                );
        else if (level_ == 153)
            return
                bytes32(
                    0x2566e509d27fe0c00ef2c3f76571a1de60050d20956554ccee77800c18862848
                );
        else if (level_ == 154)
            return
                bytes32(
                    0x83a8a736815726b51d74b5e17aa40cd190dc8df1fea1d003a63d383befb78c54
                );
        else if (level_ == 155)
            return
                bytes32(
                    0x3fd9e153ba4a11b304729c10f1aadb2c1ce9107dfcbc116a6386bb232af67d51
                );
        else if (level_ == 156)
            return
                bytes32(
                    0x48709af2d94bc10e73010cfbe7c4f6d0c2bab4ae8b47e4550a61395406c45de6
                );
        else if (level_ == 157)
            return
                bytes32(
                    0xc57c3276264b9553da224c0d1a17b68b3c56a4b15662d36e10a35c69b17667ce
                );
        else if (level_ == 158)
            return
                bytes32(
                    0x23d988b412458381a1e7cc4694c7965079160b1475402094e36c5efcb5e2f909
                );
        else if (level_ == 159)
            return
                bytes32(
                    0x09dc157ba005a4ddffe637c6acfdfbf00dd6a841bb68b071b10e780aa40cf85f
                );
        else if (level_ == 160)
            return
                bytes32(
                    0x8263f9ed50c782f009a566c2b39d8190060b943a72eb5a293295de5781eb3f97
                );
        else if (level_ == 161)
            return
                bytes32(
                    0xe98d07db4c54980be0d3163d829aba97ba0021f92c014bfd75073bda8cbf3135
                );
        else if (level_ == 162)
            return
                bytes32(
                    0xdf0ea686d3be86feebdfe4e5735f5e29f873dcccedf032dbe87ebb4ce288e7d2
                );
        else if (level_ == 163)
            return
                bytes32(
                    0x5dc069939571e98953968137491ae284cbef1c8568ba52a6caf16be6686704b5
                );
        else if (level_ == 164)
            return
                bytes32(
                    0xbd0b16f1fa0bc9347890e62b042484a96d935c3f4e4fe26f978a9fae857b29de
                );
        else if (level_ == 165)
            return
                bytes32(
                    0x493f8e90be01b85720fce78d9a0b1723f9207fa40a138a289c2c874f77d44193
                );
        else if (level_ == 166)
            return
                bytes32(
                    0x7073ea24f05b6e6bea9ebaa3fb1d09a27ec6be64c7b23ba47ea31539b7417457
                );
        else if (level_ == 167)
            return
                bytes32(
                    0x7eaf8beb1144577bc002a8206905fca6cb9a92d4669a5e0a2b3e3ec3fec92639
                );
        else if (level_ == 168)
            return
                bytes32(
                    0xbde92386815c070dea0667413a08310509d7c9b28bb1362e27b9971690e5c0c6
                );
        else if (level_ == 169)
            return
                bytes32(
                    0xeb16656865d318680b7b0d5a8561d3dd6af56925970e4c9a4c267c81c3b636da
                );
        else if (level_ == 170)
            return
                bytes32(
                    0xcb6bf96fa19de91de4b5188cce06be2939ec4451e1873e480d1e07bd3dfe918f
                );
        else if (level_ == 171)
            return
                bytes32(
                    0xef2e80422d46790a0431ee33d8aa549d6d4251b1d664c7058b45068c3a976e7c
                );
        else if (level_ == 172)
            return
                bytes32(
                    0x9f4c26b40157d61dd2a2eb64f6a74d655250bc0647527b20216d836a7d48bc45
                );
        else if (level_ == 173)
            return
                bytes32(
                    0x3d861614e2070c13bb97de44f75972ecd5d81e2025fe7127e6ed3f9a2f992c96
                );
        else if (level_ == 174)
            return
                bytes32(
                    0x6925cbe00472cc50784ae9417c15e50c0bd3085b555ffba9160cd56ce0e02ff9
                );
        else if (level_ == 175)
            return
                bytes32(
                    0x2c07ea3527207923e96a912c2dcf391b1e3886b22119b1635c2c2d62cc61495f
                );
        else if (level_ == 176)
            return
                bytes32(
                    0x46fe259ea57d17992fc658f80a94aa2f37b63e6095de918ba699a8fae64fcd2b
                );
        else if (level_ == 177)
            return
                bytes32(
                    0x70fc67c42f2605058653e35656c960c69988e2d9f818b7d498a924c31a6a0d16
                );
        else if (level_ == 178)
            return
                bytes32(
                    0x9f13f19042828f79c17800f6dc624ac76382de4dca5e1948f15e101e4d6c96f4
                );
        else if (level_ == 179)
            return
                bytes32(
                    0x448b7d43a674b893bee7f4bcaf22eb92b8f13eace36cb34afd568a472d25135e
                );
        else if (level_ == 180)
            return
                bytes32(
                    0xdbcb85bd4dc1f4260bf7afb24b264b25f63963d84c1937687ec9a384046af8b2
                );
        else if (level_ == 181)
            return
                bytes32(
                    0x5a9c097d835e29c20a05ebea6b7f23f5e2d1263eb1bd93779efb871e4315d1f7
                );
        else if (level_ == 182)
            return
                bytes32(
                    0xdbed462b6a1b14ea3409d192cb4082cbeff3687a3c0fda1e839ef5956b3c2346
                );
        else if (level_ == 183)
            return
                bytes32(
                    0xcb56b19a815523df24117788d9792fa68fe011ffc3a5910e998991038ecdba36
                );
        else if (level_ == 184)
            return
                bytes32(
                    0xa13e3f556f0fff4fd35c0698d8760015d6eaa6227aec56d3ff68ef223c6947a9
                );
        else if (level_ == 185)
            return
                bytes32(
                    0xeb0ce72e31fb969c4fd010bcea7af9af01685e198cae9b13bd38806166007ef2
                );
        else if (level_ == 186)
            return
                bytes32(
                    0x064162cc07cb6234137fe3ac38224442b26d767c950ac84388a715862a5ffff2
                );
        else if (level_ == 187)
            return
                bytes32(
                    0x67d79d88b9218ca1b4e7d7c178aea170fc0edd4afd6a264698bfa80791d5cd71
                );
        else if (level_ == 188)
            return
                bytes32(
                    0xa28270f841b92dc8698ed5613ecaf11f5d577c023a6803959bdb6a60809273b6
                );
        else if (level_ == 189)
            return
                bytes32(
                    0x447f12f05a198a6f28afea20d07b4ae3fc50afc212ceb0a5d11ee087d6674346
                );
        else if (level_ == 190)
            return
                bytes32(
                    0xeb034ebad3d82683cf594e9971a45b6b67d19c9957086e08fae41c3150487fac
                );
        else if (level_ == 191)
            return
                bytes32(
                    0x70425fd0b7663d80ec9605b7474ee594be89418423dab28378e6c87e666f28b0
                );
        else if (level_ == 192)
            return
                bytes32(
                    0xb89931f7384aeddb5c136a679d54464007e2d828d4741bec626ff92aeb4b12d4
                );
        else if (level_ == 193)
            return
                bytes32(
                    0x7ce243233824b0698d95f4ecb3497eb5a8df4435b6eeacde2315a027f00ad78f
                );
        else if (level_ == 194)
            return
                bytes32(
                    0xc0aa37aeb710e65ae422652f38f11f8070f901005192b8c78223ae379b48abeb
                );
        else if (level_ == 195)
            return
                bytes32(
                    0x6f254bc1e076a7df76784801dde0f19c0e505ed737e3e757f372d2d47fb252da
                );
        else if (level_ == 196)
            return
                bytes32(
                    0x423347221fcd7574927ba888aea064acbf414372d5a62ad1e16117e3993cd677
                );
        else if (level_ == 197)
            return
                bytes32(
                    0x673babc2accf35a04ffc95b876350213acfd7a25788657c1d0389341a53e2567
                );
        else if (level_ == 198)
            return
                bytes32(
                    0x3ffb44d37de9dcd28993916ae580f70d6106cf4e70a4d34bc6648c7ba6771ba4
                );
        else if (level_ == 199)
            return
                bytes32(
                    0x9332824ef368c2478ce674df35843faeeaceda4d677657248e666053ee01fb13
                );
        else if (level_ == 200)
            return
                bytes32(
                    0x70c1f38a299f77e14d6a6c6e0afea94c32441639cabfdea10015c9af71ebab82
                );
        else if (level_ == 201)
            return
                bytes32(
                    0x061b9f4ec1eaacc79cee97ac6014742dd382aebc463c01b87b281023a5be9984
                );
        else if (level_ == 202)
            return
                bytes32(
                    0x3102780a3dcaa2d4fa9f80fb2df8d93c1f78b8ca6bf42e7064c61a7abbedacc4
                );
        else if (level_ == 203)
            return
                bytes32(
                    0x4c03cd8bcc2fd100b9d55cf1734d0610ba2e8c77d520ee122809094f9aea4a25
                );
        else if (level_ == 204)
            return
                bytes32(
                    0x0e249488cc9aabaee9d513bbdb623c78a72734f490d22c4cce73b36ab7af46b2
                );
        else if (level_ == 205)
            return
                bytes32(
                    0x2b0108a7f4d9f1b5d6b5868d0bb49cc4efe01c0511efb9fa6cafe2630bbf8e7f
                );
        else if (level_ == 206)
            return
                bytes32(
                    0xf4860fc94c5e4043f504cbe0c87d2e5fc8fd6f0ee2c730a8e5fe5eac9ab9b4d8
                );
        else if (level_ == 207)
            return
                bytes32(
                    0x06b9194724bca5212ee2fa67d9b3bade90581e82c337efba29575e76588483d0
                );
        else if (level_ == 208)
            return
                bytes32(
                    0x8cfa68a2f4d315a70c88917211d67e7d5d00e8d7540d1593d1588b044a708cc6
                );
        else if (level_ == 209)
            return
                bytes32(
                    0xbd16b756d8984859394b076a600039e275042dd6f4f1d83ede4d6cf1eeeae0a6
                );
        else if (level_ == 210)
            return
                bytes32(
                    0x49901548b8f0b385f5d4b66ece4d86d7088d31874acf74a67398a5ec5442d421
                );
        else if (level_ == 211)
            return
                bytes32(
                    0x5634987e436260d9655bb52076ce394d7507827d7886db3209d8a43b625a8c43
                );
        else if (level_ == 212)
            return
                bytes32(
                    0x0fab9c71fa94b034ff7829f8e5143571df082264a8b10f84e02a1bf7cd2a4da5
                );
        else if (level_ == 213)
            return
                bytes32(
                    0x36b146637084b907e9a23b454b203658e9820941af6fe2c03a2f5fcc3210a69f
                );
        else if (level_ == 214)
            return
                bytes32(
                    0x9ade6c91a2dcf10807dd96e28c81fe6bf14953fb0fd1451bcf8084c3ff1e3074
                );
        else if (level_ == 215)
            return
                bytes32(
                    0xd98ea666cba629938bca5a6dc70dc6586a4211d7890f831a8f5f74e1316a0352
                );
        else if (level_ == 216)
            return
                bytes32(
                    0xe567ee0f0510cb5bd6c5c3c256109863ac27f4fbaa2b04c716443dda47439f19
                );
        else if (level_ == 217)
            return
                bytes32(
                    0x5a0b689972d503a757da449ebf2a649ff22d96eac16371023864bdd28dead6ba
                );
        else if (level_ == 218)
            return
                bytes32(
                    0x638602355836f79873347ed2bb035cdb620191e66b07e169c02bd4efe40034fb
                );
        else if (level_ == 219)
            return
                bytes32(
                    0x3de19a51923bc39ebd7967e173c1ef75c6ce263277650672892cbecc7f08ce21
                );
        else if (level_ == 220)
            return
                bytes32(
                    0x623f203318c1f61436b7ee9ce4bdb946f79c5f305ab79e0db91c311451f6c90d
                );
        else if (level_ == 221)
            return
                bytes32(
                    0x3dc3713d2f220ea9aeeb28d94574777eac7f3ba57c22f80f5f9be59b34ed20b4
                );
        else if (level_ == 222)
            return
                bytes32(
                    0xcceda416b9f629cc37fc124fc0105b6e9482a94aad927f57f5adb3b6f766df61
                );
        else if (level_ == 223)
            return
                bytes32(
                    0xb41ae12aec6551412cbd897ddbd8b3200a920fb9e50ab30a17780dd1f52dba84
                );
        else if (level_ == 224)
            return
                bytes32(
                    0x06fe5fc1132caa34bdb1a9a00ae89b8b5ff2e14ff76001b3c2c33e4e22794d03
                );
        else if (level_ == 225)
            return
                bytes32(
                    0x2c2c1049a7258bb26aa7b7307428d1b691e2d161e8f004b2ea05ec5f79e97da6
                );
        else if (level_ == 226)
            return
                bytes32(
                    0xab03092ddd92eedaed8cde9d6a14ea5680ea5cc5e56b076db47bb31f4198bf28
                );
        else if (level_ == 227)
            return
                bytes32(
                    0x6555fec505cea1e237c5196e4b1a1fd805ae6ecc3d9ce473dfcf9c4dfe715dbf
                );
        else if (level_ == 228)
            return
                bytes32(
                    0xc7ddac7a99a7b9910b8847b670d5af53f7958af0a7967b79b9ac0069c390244f
                );
        else if (level_ == 229)
            return
                bytes32(
                    0xba78706f57a574f063d5160fc298e05f2aab06dc887e797f2a97181414643d42
                );
        else if (level_ == 230)
            return
                bytes32(
                    0x485da52d1d8900a627e2f3cc9f3cf6e653b8effed5972cd10a38990f2fefc494
                );
        else if (level_ == 231)
            return
                bytes32(
                    0x3d2f6f07c36756184ef2c622365cbaffb8b62e340f384388bb5bee95a7c6c1aa
                );
        else if (level_ == 232)
            return
                bytes32(
                    0xd17b42ded56f410a916f905ace0219c3f5b859b9e62da6ab4425792b1b6dae37
                );
        else if (level_ == 233)
            return
                bytes32(
                    0x64101129829c8cedc9bd315090d55aaf67255d64c766f15bb38ebcd4f2217607
                );
        else if (level_ == 234)
            return
                bytes32(
                    0x88fefa6ab20bb415c3d82a5a289a41ee611aac573c11d884b56e8788f769ffa2
                );
        else if (level_ == 235)
            return
                bytes32(
                    0xd362f3b43a268c4f1677145db590769d5eddce0efccfb9e8ba1c54058f657fd9
                );
        else if (level_ == 236)
            return
                bytes32(
                    0x6bd16aa587f6d9de55a4171252c85261f5695bba8ddf34002975c3386c9ea9ea
                );
        else if (level_ == 237)
            return
                bytes32(
                    0xed00b0a87e48f1fa043a23aa2bc7036783b8092c2471f7c3d987f09ab0b0e22b
                );
        else if (level_ == 238)
            return
                bytes32(
                    0x75d0331a2a803d949f93a2b3168f76518c075a8c4fca928672678f87fd6bdaa6
                );
        else if (level_ == 239)
            return
                bytes32(
                    0xce6ac2100a499f6c6f8a702ffcc3f5b0c0f9461f11f31a08c475bcb7b9897682
                );
        else if (level_ == 240)
            return
                bytes32(
                    0xa6b6783eb421c580bcd34282076160249de5a519062c4290916deb0cf172cd72
                );
        else if (level_ == 241)
            return
                bytes32(
                    0x83dba80f08b844f2c87d9bd3672a01db0648be947d801be995311d829a16c704
                );
        else if (level_ == 242)
            return
                bytes32(
                    0x5aba21b705a5b119057f2c9a72f1d1129c4415cd8e6e5af438f52b64ab4d19b3
                );
        else if (level_ == 243)
            return
                bytes32(
                    0x70d3b6ebad9db60e0e1bb999b5e7c7fe576f4b22781f325af3a08ebc7a004a1e
                );
        else if (level_ == 244)
            return
                bytes32(
                    0x3132f61390538fdc20495f4083337ba85936959ca5199e2ecbebe74a0380a214
                );
        else if (level_ == 245)
            return
                bytes32(
                    0x8feba6e9aef1d63845f0d07b1cb47e864db044cfe32777db3129bf5f7b78121f
                );
        else if (level_ == 246)
            return
                bytes32(
                    0x1d8d4c0d75f6229827bb9d26fd53433c0eabf03aa5a5103c52992c149cf14aac
                );
        else if (level_ == 247)
            return
                bytes32(
                    0x9c876e32583d71eb49269f1473d6f1655372c8b16b85b477e9b0f0277c7e39be
                );
        else if (level_ == 248)
            return
                bytes32(
                    0x1396617458c5084df53ea9b892b2f5c6289fcb5c0562b05eb07c058bf32bfe20
                );
        else if (level_ == 249)
            return
                bytes32(
                    0x1eec9748c40ad9fc8acc6022d15886e5bd1e4580b811e237cffc0478c6e53caf
                );
        else if (level_ == 250)
            return
                bytes32(
                    0x42af4d9f659bdb3d01867148f609687c6bdd3a9644565017f29fd3d9ba9b9824
                );
        else if (level_ == 251)
            return
                bytes32(
                    0x2881d7188f16068d477b7d2ccd5dc1e27e1c38fd8821ed977229ac1bd53e1dae
                );
        else if (level_ == 252)
            return
                bytes32(
                    0x5f083e405874f6bfe5bc919385f500ae444b9a171159b3b6476cad78c38a0077
                );
        else if (level_ == 253)
            return
                bytes32(
                    0x65f2bd62ad4a29a593e38bcbaac0685033d2cdb4a8129d9e7672a75ba42820c2
                );
        else if (level_ == 254)
            return
                bytes32(
                    0xbdaf0a25a0628973d4df7e4c053cda1318b39801d3f0fba827ebe792ec12cbfa
                );
        else if (level_ == 255)
            return
                bytes32(
                    0x998eb736da0f9741c6cfc2dad952491708b7b4ddabb15d37699af13fed29c35d
                );
        else if (level_ == 256)
            return
                bytes32(
                    0xa7ff9e28ffd3def443d324547688c2c4eb98edf7da757d6bfa22bff55b9ce24a
                );
        else {
            revert("level out of bound");
        }
    }

    /**
     * Gets depth of merkle tree excluding level of leaf nodes.
     *
     * It returns 0 if having no leafs.
     * It returns ROUNDUP(log2(s)) if having leafs.
     *
     * ex) 1 -> 0,  2 -> 1,  7 -> 3,  2^255 -> 255, 2^255 + 1 -> 256
     *
     * @param leafSize the number of leafs in merkle tree.
     */
    function level(uint256 leafSize) public pure returns (uint16) {
        uint16 level_ = 0;
        uint8 bitCheck = 128;
        uint256 _leafSize = leafSize;
        uint256 leafBits = _leafSize;

        while (leafBits > 0 && bitCheck != 0) {
            if (leafBits >= 2 ** bitCheck) {
                level_ += bitCheck;
                leafBits >>= bitCheck;
            }

            bitCheck /= 2;
        }

        return level_ + ((_leafSize > 2 ** level_) ? 1 : 0);
    }

    function hash(bytes32 left, bytes32 right) public pure returns (bytes32) {
        return keccak256(abi.encodePacked(left, right));
    }
}
