'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"assets/AssetManifest.bin": "3a70e591c184c15f3ff76e6e3ebbf640",
"assets/AssetManifest.json": "096035aacdc74c45db461bbbc3b9fd32",
"assets/assets/associations/association_imag.jpg": "d2b5374adc0618a6b967720e4d7b86b1",
"assets/assets/associations/association_imag2.jpg": "76e5d5db5dcd66bb2a4fb3823d922802",
"assets/assets/associations/electronix/ELECTRONIX_Family.jpg": "7919f1eb76f90af6122c7991a224112c",
"assets/assets/associations/electronix/events/ensta_robots_1/ensta_robots_8.jpg": "7eff33ded73ca07ffbb9c37c376a77e6",
"assets/assets/associations/electronix/events/ensta_robots_2/ensta_robots_1.jpg": "aa71154f4f9443eb9dac79d2ac45d216",
"assets/assets/associations/electronix/events/ensta_robots_3/ensta_robots_11.jpg": "e5d5e7fd799c85894aecce43260ea73e",
"assets/assets/associations/electronix/participation/ensta_robots_1.jpg": "bb6f5eda9fae1f9bf21424ab31cd1040",
"assets/assets/associations/electronix/participation/ensta_robots_10.jpg": "3d43eb5e47421d0486d1d8d12b396fdd",
"assets/assets/associations/electronix/participation/ensta_robots_2.jpg": "c7d2b692c0cc8c77f17b6e9b79acf2c8",
"assets/assets/associations/electronix/participation/ensta_robots_3.jpg": "c10e60884e52bf0fa92bf66b75685915",
"assets/assets/associations/electronix/participation/ensta_robots_4.jpg": "914563e99a5cd0962b4c39d913fd4c70",
"assets/assets/associations/electronix/participation/ensta_robots_5.jpg": "e10d6142a43e3dda028e180a72d790a6",
"assets/assets/associations/electronix/participation/ensta_robots_6.jpg": "3401a02ad742c18effc9402642f5ee86",
"assets/assets/associations/electronix/participation/ensta_robots_7.jpg": "6268b46d3877217e942f3a531ea94b9e",
"assets/assets/associations/electronix/participation/ensta_robots_8.jpg": "2aba279bf4855910b5b202918c24a7f3",
"assets/assets/associations/electronix/participation/ensta_robots_9.jpg": "eac3c6e298a59e12f8d7700ad3625d37",
"assets/assets/associations/electronix_enstab.png": "a2180d883c1d156ae282ef9238818b05",
"assets/assets/associations/enstab_competitions/competition_image.jpg": "b4086c1fa1daca1dbf62882faa10412c",
"assets/assets/associations/enstab_competitions/enicarthage.jpg": "cb857eba14b84c3186bf41c7afdbbfa9",
"assets/assets/associations/enstab_competitions/enicarth_competition.jpg": "2164407257a1811edb81e2bc141ebf46",
"assets/assets/associations/enstab_ieee.png": "97a82ec2bc0f4646ef8eb676ab552dac",
"assets/assets/associations/etc/ETC_Family.jpg": "b5eeb2dfdab559dbca356d6d891aee4e",
"assets/assets/associations/etc/visites/animal_shelter/etc_4.jpg": "032fc9ebcc856309d1a197edc8f083f6",
"assets/assets/associations/ETC_Logo.png": "10c1fbf5e9a55ba78ac66110475bce42",
"assets/assets/associations/gdsc/event/event1.jpg": "1547edbcc81eec1bc1a25671b8d8d351",
"assets/assets/associations/gdsc/event/event10.jpg": "27c1010cbe68ef00f5611d6fed76bebe",
"assets/assets/associations/gdsc/event/event11.jpg": "accd75ccb7f8618901291a654e8c9e1d",
"assets/assets/associations/gdsc/event/event12.jpg": "8fa65839239f433a4ab1122055022af3",
"assets/assets/associations/gdsc/event/event2.jpg": "a37ff9ffc14cf1a4478752fe3d5970eb",
"assets/assets/associations/gdsc/event/event3.jpg": "67492d8a00488367c2f8c32ce081d402",
"assets/assets/associations/gdsc/event/event4.jpg": "f41b79693f85c2b1a93fd27e0940e157",
"assets/assets/associations/gdsc/event/event5.jpg": "9dd2e54a7d0bed29cdda2fcc1127bb98",
"assets/assets/associations/gdsc/event/event6.jpg": "578f9b99ebdb8262c257231e31a5f03d",
"assets/assets/associations/gdsc/event/event7.jpg": "e987d4dbbfdb75cdda982fe15ede6922",
"assets/assets/associations/gdsc/event/event8.jpg": "444780d87c84db3e4a6a842c59edd917",
"assets/assets/associations/gdsc/event/event9.jpg": "c14b5e3d96241da2bb91b82686ad4ee9",
"assets/assets/associations/gdsc/gdsc1.jpg": "a211c5ac9d8486c7cf1afe5d09170b18",
"assets/assets/associations/gdsc/gdsc2.jpg": "9b7c1ad86bca6ce5448aaf5f7b10cac2",
"assets/assets/associations/gdsc/gdsc3.jpg": "8760028419ed629fb03c062781aadaff",
"assets/assets/associations/gdsc/gdsc4.jpg": "b578b14b82e5d8cc4b4121914fe7ec0e",
"assets/assets/associations/gdsc/gdsc5.jpg": "8f5661b5f3e00e0ee555bb48fcf10533",
"assets/assets/associations/gdsc/gdsc_familly.jpg": "aea805dfd31166fc69c47ead4afff7a9",
"assets/assets/associations/gdsc_enstab.png": "c57977869427ff7f6622862cfbcfafe5",
"assets/assets/associations/ieee/events/EXTREM/extrem1.jpg": "0e04ed617d5eca110da8c319403512f8",
"assets/assets/associations/ieee/events/EXTREM/extrem10.jpg": "2ab85682a6f55fb92464649e8fc3722d",
"assets/assets/associations/ieee/events/EXTREM/extrem11.jpg": "6bb7718a889eb596f32e2b5de6c01c9a",
"assets/assets/associations/ieee/events/EXTREM/extrem2.jpg": "7410d7a8e1ff1bbeafedea09ce57d7a0",
"assets/assets/associations/ieee/events/EXTREM/extrem3.jpg": "7a077bf0f5acae58ad9869ba0ea03dda",
"assets/assets/associations/ieee/events/EXTREM/extrem4.jpg": "cca732ef17a13517a5310396947cbc37",
"assets/assets/associations/ieee/events/EXTREM/extrem5.jpg": "b1e1331ab7955a9d4b5599acaa9d876c",
"assets/assets/associations/ieee/events/EXTREM/extrem6.jpg": "499d0723901cfa61e50159b969b1b402",
"assets/assets/associations/ieee/events/EXTREM/extrem7.jpg": "0d46fe29f3bedd4f89cae34963b913c4",
"assets/assets/associations/ieee/events/EXTREM/extrem8.jpg": "776a9b5b07b7f7c58bce11ff1fa8e145",
"assets/assets/associations/ieee/events/EXTREM/extrem9.jpg": "c97d515ae89df7d2ec3222ecb4c046e9",
"assets/assets/associations/ieee/events/TSYP1/tsyp1.jpg": "0a9325348a00965e5a68e802b3532c49",
"assets/assets/associations/ieee/events/TSYP1/tsyp10.jpg": "ccce10f98163482d73c38c7057aa1939",
"assets/assets/associations/ieee/events/TSYP1/tsyp2.jpg": "8e5f66bc9c028ba7c7a688aa4eebcc57",
"assets/assets/associations/ieee/events/TSYP1/tsyp3.jpg": "4819666d9317219341d5f52f32c95a66",
"assets/assets/associations/ieee/events/TSYP1/tsyp4.jpg": "1f598bff8bad532c55a19c31a7c89624",
"assets/assets/associations/ieee/events/TSYP1/tsyp5.jpg": "6910d13b753bd75f37a177c252212b3f",
"assets/assets/associations/ieee/events/TSYP1/tsyp6.jpg": "3a582cef46c2ccf4f168b2156a05e221",
"assets/assets/associations/ieee/events/TSYP1/tsyp7.jpg": "2499d12a7bfe966394a285b61bfec052",
"assets/assets/associations/ieee/events/TSYP1/tsyp8.jpg": "4a5528a8780bbbd3fdec0daff625ae89",
"assets/assets/associations/ieee/events/TSYP1/tsyp9.jpg": "19a4ad20821964906759c7ae946582a0",
"assets/assets/associations/ieee/IEEE_Family.jpg": "ddb01fab857a43b7ee0cf2338c36333e",
"assets/assets/associations/nateg/NATEG_Family.jpg": "8cc6b2a5d76150930e2e49b24bdfd61c",
"assets/assets/associations/nateg/voluntary/nateg_1.jpg": "106daa772c8988109e4362da6112094c",
"assets/assets/associations/nateg/voluntary/nateg_2.jpg": "06993451dc22ceda00a8617010a5ad7f",
"assets/assets/associations/nateg/voluntary/nateg_3.jpg": "8e3025c895046d6fbb581b661b0b7766",
"assets/assets/associations/nateg/voluntary/nateg_4.jpg": "795836c3d46fdbf458e9c9f0b3785be2",
"assets/assets/associations/nateg/voluntary/nateg_5.jpg": "fbd0ff977821ca5d6d51ec3cea758b94",
"assets/assets/associations/nateg/voluntary/nateg_6.jpg": "d9f06fe922bb4f564a875baa97293d49",
"assets/assets/associations/nateg/voluntary/nateg_7.jpg": "26e148c060d8318884037d29cf498530",
"assets/assets/associations/nateg/workshops/nateg_1.jpg": "679eead0c44fc78c47912a415bdddbb2",
"assets/assets/associations/nateg/workshops/nateg_10.jpg": "7c089b7e4fbb3ff8ded495e2875dda21",
"assets/assets/associations/nateg/workshops/nateg_2.jpg": "abebd1d778b3635140bfee2ccc72ed2c",
"assets/assets/associations/nateg/workshops/nateg_3.jpg": "a6b4c4abbdd1725cfb0ef1d4b2646054",
"assets/assets/associations/nateg/workshops/nateg_4.jpg": "6b630c5be459a10d5d136e880ce98231",
"assets/assets/associations/nateg/workshops/nateg_5.jpg": "8164697256acf86aefe5005e91d0593f",
"assets/assets/associations/nateg/workshops/nateg_6.jpg": "b37a81024b100d469311cf7010ed74fe",
"assets/assets/associations/nateg/workshops/nateg_7.jpg": "2a227f9ebeaad173d19b6939527d4454",
"assets/assets/associations/nateg/workshops/nateg_8.png": "02032116a4cca7db909bebf7e409fd62",
"assets/assets/associations/nateg/workshops/nateg_9.png": "76e0ecb9798286ef74b9a918a2b9587b",
"assets/assets/associations/nateg_enstab.jpg": "2080ba155f988fcf17093cf57553a8bf",
"assets/assets/associations/peec_projects/peecs/peec_1.jpg": "3ef77259fcd1fb79c21ae590832669f3",
"assets/assets/associations/peec_projects/peecs/peec_10.jpg": "f3eb546b547abfe2cfb079e1befc1261",
"assets/assets/associations/peec_projects/peecs/peec_11.jpg": "0d8edbac6fca622e2c6f2f5bf9bd6bab",
"assets/assets/associations/peec_projects/peecs/peec_12.jpg": "82a78b3274887065d6af6a0d75f718ce",
"assets/assets/associations/peec_projects/peecs/peec_13.jpg": "9fbaac5653d97f683683925cc7bb205e",
"assets/assets/associations/peec_projects/peecs/peec_14.jpg": "68e6e171fadc6cbe90fdec7811d8c173",
"assets/assets/associations/peec_projects/peecs/peec_15.jpg": "d64adfad64115e90f93447b512c8181c",
"assets/assets/associations/peec_projects/peecs/peec_2.jpg": "63e38600fcc605e6e1ad1c619203029d",
"assets/assets/associations/peec_projects/peecs/peec_3.jpg": "186bcc1ee7ec0e073d9029e509ce5efc",
"assets/assets/associations/peec_projects/peecs/peec_4.jpg": "fbfb4052d7d2da3bce1536e9c2769792",
"assets/assets/associations/peec_projects/peecs/peec_5.jpg": "9f6d9be6a7c73b6be16f162fe8c40fc1",
"assets/assets/associations/peec_projects/peecs/peec_6.jpg": "9e403d20aeec4e96a2a042e79ad38e71",
"assets/assets/associations/peec_projects/peecs/peec_7.jpg": "5d30f1c75cbb0c942e369ce70c0c36ee",
"assets/assets/associations/peec_projects/peecs/peec_8.jpg": "160bb058461b45797e964f64ede77553",
"assets/assets/associations/peec_projects/peecs/peec_9.jpg": "f05196165936ab75b035b97d1b745b98",
"assets/assets/associations/peec_projects/peec_antenne.jpg": "c74838ab6340eeedb2698d526d9cbaf5",
"assets/assets/associations/peec_projects/peec_logo.png": "474458fff9c4aa391ce1ac04f35622c9",
"assets/assets/associations/peec_projects/peec_projects/peec_event/peec_1.jpg": "baa56efa5ef0e68e0854b0b5659193ce",
"assets/assets/associations/peec_projects/peec_projects/startups/peec_1.jpg": "ed635533de89339723b6da227499c758",
"assets/assets/associations/peec_projects/peec_projects/startups/peec_2.jpg": "74ec684f947a50cf5ad60432ffd0cb33",
"assets/assets/associations/peec_projects/project_image.jpg": "b013bbe699d372e0097bf2a1019a67cc",
"assets/assets/associations/workshops/workshop_image.jpg": "9b7c1ad86bca6ce5448aaf5f7b10cac2",
"assets/assets/enstab.jpg": "1ae185fa22e38588c50fcdb46a19958e",
"assets/assets/enstab_images/enstab1.jpg": "9742ca67923920fc831637feb07e5b31",
"assets/assets/enstab_images/enstab2.jpg": "bbc3f2db224aa220c7bdecb4bb1ab66f",
"assets/assets/enstab_images/enstab3.jpg": "9742ca67923920fc831637feb07e5b31",
"assets/assets/enstab_images/enstab4.jpg": "4feb660f125cbd86f11c056ac0ca5308",
"assets/assets/enstab_images/enstab5.jpg": "8427670bd8129324c7b885c3436c194f",
"assets/assets/first_meeting.jpg": "035021b80fbcdf87dc8d661a11997649",
"assets/assets/img_2.jpg": "9742ca67923920fc831637feb07e5b31",
"assets/assets/institute.png": "696e0001cad37be286980b3d8ea3073d",
"assets/assets/iso_21001.png": "c72c88ce803b53a125ce4c09c7337520",
"assets/assets/larina/Larina.png": "0cc164645f76c9eea6dc45c751ceeb72",
"assets/assets/larina/larina_1.jpg": "af24d92cc94da424f63127faac0f9082",
"assets/assets/larina/larina_2.jpg": "53ddb22de8855335e2e856c7758ae3f5",
"assets/assets/larina/larina_3.jpg": "8ee29fa0d5c3089912b30ad1b8bcc791",
"assets/assets/larina/larina_4.jpg": "bd6c67bd5b663e9f986847d6b0cf6be4",
"assets/assets/logo.png": "a2f3236b9ebfaaaaf1454fa21b0debfa",
"assets/assets/master_1.gif": "13b7f4f839c318e3a0bb30ad08d81e68",
"assets/assets/master_2.gif": "e6e1ec30c941e413a5397f6b0526cfe5",
"assets/assets/partners/internal/partner_1.jpg": "36a328340763f7263ab645a016c38a49",
"assets/assets/partners/internal/partner_10.jpg": "c16a8979536213f0cdd6a1af23ae6e49",
"assets/assets/partners/internal/partner_11.jpg": "e4ee63664932cedb82abed9dbbd6caa3",
"assets/assets/partners/internal/partner_12.jpg": "1bf43f823d86792560a991be5572a8d0",
"assets/assets/partners/internal/partner_13.jpg": "0784681c0e568fea83e8b3be9556573e",
"assets/assets/partners/internal/partner_14.jpg": "6303b25661e276805968d6534b4b5a99",
"assets/assets/partners/internal/partner_15.jpg": "7dbb4ac8a82c2e8c76c4282c28d0c602",
"assets/assets/partners/internal/partner_16.jpg": "d7986cc01ed06c2aca6920e94531259b",
"assets/assets/partners/internal/partner_17.jpg": "a81e075499799a0a80520bd2cedc4668",
"assets/assets/partners/internal/partner_18.jpg": "81eb45dd27e35606ebf4604af224b456",
"assets/assets/partners/internal/partner_19.jpg": "f0c8811918db0b2e0276e2cd653f5035",
"assets/assets/partners/internal/partner_2.jpg": "4b0f6df802d645780fc4588e1948c5f9",
"assets/assets/partners/internal/partner_20.jpg": "b52afc0c9b75d8e1af29d00e2931b149",
"assets/assets/partners/internal/partner_21.jpg": "3ec6c4cf26c85adac13030512c916fb0",
"assets/assets/partners/internal/partner_22.jpg": "6cb143ba4ad49a1b7ded8533a6bbb566",
"assets/assets/partners/internal/partner_23.jpg": "4ea2f2b337142207c77e80fb0d1535f7",
"assets/assets/partners/internal/partner_24.jpg": "20dec6dd6b73de8411799bda6bcb74d2",
"assets/assets/partners/internal/partner_25.jpg": "6493574dfac0e605ca8b0e3e623662f6",
"assets/assets/partners/internal/partner_26.jpg": "058dd992a6f7b017a63c5f83f5c2beec",
"assets/assets/partners/internal/partner_27.jpg": "fd3b5cc706ff43ad1c9c8bdaf8c886c6",
"assets/assets/partners/internal/partner_28.jpg": "d0d252133140d12dc346620dd234bcd9",
"assets/assets/partners/internal/partner_29.jpg": "bb1cb312ac6e35b6462f87bea2bc4843",
"assets/assets/partners/internal/partner_3.jpg": "eded38c153bd8ff9383fd6d04175348e",
"assets/assets/partners/internal/partner_30.jpg": "66aa16467978829ca0060ae9623276e8",
"assets/assets/partners/internal/partner_31.jpg": "fa5ee1e22e08e7666f6deb92b1b8ae94",
"assets/assets/partners/internal/partner_32.jpg": "c85426f072055225d7165331c02b9701",
"assets/assets/partners/internal/partner_33.jpg": "6eabc8762a981a8ec25b628771771d1f",
"assets/assets/partners/internal/partner_34.jpg": "220636e56d1a62bcf6b5e0a17a4bcdc2",
"assets/assets/partners/internal/partner_35.jpg": "0434f170685518a06c3893ac68ec883d",
"assets/assets/partners/internal/partner_36.jpg": "98dceeac07a1c5a32822c88204171ea2",
"assets/assets/partners/internal/partner_4.jpg": "ed635533de89339723b6da227499c758",
"assets/assets/partners/internal/partner_5.jpg": "4ce1fc4f22fca86cd6a2849331daed3e",
"assets/assets/partners/internal/partner_6.jpg": "fdaa76247f9cda1227e8ce05da64a862",
"assets/assets/partners/internal/partner_7.jpg": "610b445f76a8243ba3000f18a578fd38",
"assets/assets/partners/internal/partner_8.jpg": "b38b44ca896c588737268019e31b41ea",
"assets/assets/partners/internal/partner_9.jpg": "5129d487d1117ffc9941023eb723e95d",
"assets/assets/program/ean.jpg": "d45aaf98d159e9457c2509390ad97755",
"assets/assets/program/setp.jpg": "edb300d85173f85a97c955556cad1692",
"assets/assets/program/sic.jpg": "ef60c71bc71af19d4ba10052a7f39438",
"assets/assets/program/ta.jpg": "801a61e80f8f9414a7a9474602e375fc",
"assets/assets/research/lab_1.jpg": "adafd0efaaca190da5adeadbe63da506",
"assets/assets/research/master.jpg": "86daf731aee13abb4b4fc66ab29337b5",
"assets/assets/research/need_1.jpg": "908086347290502cf7925bddea520331",
"assets/assets/research/unit_service.jpg": "a3fa27f52bec75014c3d547fbd58af2b",
"assets/assets/research/unit_services/Picture1.jpg": "89a9c71947291a9c114d1e1cfa2848d1",
"assets/assets/research/unit_services/Picture2.jpg": "ee7477d302b2f12df6472003844becc5",
"assets/assets/research/unit_services/Picture3.jpg": "b968d4c1299abd23a80a58659fa91f8d",
"assets/assets/research/unit_services/Picture4.jpg": "18ccac00fc0565d793fd63e6ffd8bf79",
"assets/assets/research/unit_services/Picture5.jpg": "11acad1477a3b6f7f589a9fd78f93875",
"assets/assets/research/unit_services/Picture6.jpg": "3d047be7d71f04d441f67f3311a1c287",
"assets/assets/research/unit_services/Picture7.jpg": "a3fa27f52bec75014c3d547fbd58af2b",
"assets/assets/southern_university.png": "77546fc82e0ab613d11043e0410b2a9c",
"assets/assets/team_members/img_1.jpg": "eb0e459d5893860c9f411c27b64a5483",
"assets/assets/team_members/img_2.jpg": "4a89069f137fa7b07c54cc5e5ed311bc",
"assets/assets/team_members/img_3.jpg": "c4ce90af49df8a90a87a504cd4e8da7f",
"assets/assets/team_members/img_4.jpg": "c07fbad0343ea399aebe8d164d154309",
"assets/assets/team_members/img_5.jpg": "d60f4fb981409bd77632f230062e8714",
"assets/assets/team_members/img_6.jpg": "a0398833abdb1b270c658face3882450",
"assets/assets/university.png": "3d2af0652620bdbe45c33cad2dc08c2a",
"assets/assets/wbr_logo.png": "a6daaf55debb517c67b4e9af118c2f2c",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/fonts/MaterialIcons-Regular.otf": "052c7613bef37b8f3da6af714721420b",
"assets/NOTICES": "0ee317d60d8e1128b391e7385d3d41bf",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "57d849d738900cfd590e9adc7e208250",
"assets/shaders/ink_sparkle.frag": "f8b80e740d33eb157090be4e995febdf",
"canvaskit/canvaskit.js": "76f7d822f42397160c5dfc69cbc9b2de",
"canvaskit/canvaskit.wasm": "f48eaf57cada79163ec6dec7929486ea",
"canvaskit/chromium/canvaskit.js": "8c8392ce4a4364cbb240aa09b5652e05",
"canvaskit/chromium/canvaskit.wasm": "fc18c3010856029414b70cae1afc5cd9",
"canvaskit/skwasm.js": "1df4d741f441fa1a4d10530ced463ef8",
"canvaskit/skwasm.wasm": "6711032e17bf49924b2b001cef0d3ea3",
"canvaskit/skwasm.worker.js": "19659053a277272607529ef87acf9d8a",
"favicon.png": "797ec6f0a117f77842e370e61c85f3bf",
"flutter.js": "6b515e434cea20006b3ef1726d2c8894",
"icons/ic_launcher.png": "685a388781bad74fc59b96994a259d28",
"icons/ic_launcher_adaptive_back.png": "ca8ee7f93171bb4638f729567cc20b39",
"icons/ic_launcher_adaptive_fore.png": "330f0a2e4199e350b346a0cccb075ffd",
"index.html": "4b677b4bdcc6f9332fcb813b4930fbce",
"/": "4b677b4bdcc6f9332fcb813b4930fbce",
"main.dart.js": "ab4b5218033613efbc79aeb236f19d66",
"manifest.json": "b69fbb3337c3e2eca88a629a7b523853",
"version.json": "ff606dcdc72db8f05ec71913dcba641f"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"assets/AssetManifest.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
