'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "version.json": "009c9e65172e010890f7f65fde438006",
"canvaskit/canvaskit.wasm": "bf50631470eb967688cca13ee181af62",
"canvaskit/canvaskit.js": "2bc454a691c631b07a9307ac4ca47797",
"canvaskit/profiling/canvaskit.wasm": "95a45378b69e77af5ed2bc72b2209b94",
"canvaskit/profiling/canvaskit.js": "38164e5a72bdad0faa4ce740c9b8e564",
"favicon.png": "c14ffd706ba00d69c29bf89f95382dec",
"flutter.js": "f85e6fb278b0fd20c349186fb46ae36d",
"index.html": "bcf04f5825417047797931aeab4b8393",
"/": "bcf04f5825417047797931aeab4b8393",
"manifest.json": "95aa8de22845efd064f86a7a23c9fafc",
"main.dart.js": "207b032b647c25dd530f5692d1f278c2",
"assets/AssetManifest.json": "437bb42858cefd698e7bbe12dc24c0c2",
"assets/FontManifest.json": "436121c63f0ae4444007f5dca9c3e398",
"assets/NOTICES": "d47140008a8a795372f44d3411a6c698",
"assets/fonts/MaterialIcons-Regular.otf": "95db9098c58fd6db106f1116bae85a0b",
"assets/assets/images/mine.png": "9f1f249a13c19fb4944e37a9bf2608ad",
"assets/assets/images/21.jpeg": "a7f876eb869ed1153ebf42c60d573ace",
"assets/assets/images/00-removebg.png": "93241c88f87bb4d255af88e4c614cd99",
"assets/assets/images/25.jpeg": "186fff5513cced91a0b028bbbe91a125",
"assets/assets/images/8.jpeg": "b324262ae4c767c4792654f65bfdc51b",
"assets/assets/images/33.jpeg": "3c48dd46d521ef716eaeade388873177",
"assets/assets/images/2.jpeg": "184575fbde587fd3c7f6c52cc67e85e2",
"assets/assets/images/29.jpeg": "653972421ba1aa1a66dc43b256558210",
"assets/assets/images/36.jpeg": "b82739a71767f90e2623b3bb2bae5724",
"assets/assets/images/42.jpeg": "a0a2a854db5373feb40fc9ef0e97bc6a",
"assets/assets/images/40.jpeg": "fdb19d8af2d20a37a85a8e8a669c963f",
"assets/assets/images/23.jpeg": "b7d5f71f7a419137378f2e50de472a67",
"assets/assets/images/6.jpeg": "f79584fe67aa213f40fa753af9e1edb4",
"assets/assets/images/35.jpeg": "928ab5e4964b0fd1895c42875b16af7b",
"assets/assets/images/30.jpeg": "b202e60df5dd247753047154ca6c47bc",
"assets/assets/images/16.jpeg": "029b6e0c0d64ee109711beb1b8af1d3a",
"assets/assets/images/43.jpeg": "096954925d9860771f251b085e658ff8",
"assets/assets/images/34.jpeg": "557b21c099f1e5835e053d855226ca09",
"assets/assets/images/22.jpeg": "2fd590aeb1a486eaab92550ec406884f",
"assets/assets/images/10.jpeg": "819e44a73de6458afa2182817e479895",
"assets/assets/images/15.jpeg": "e39df7e74cfba410a66b11d6ca4ef914",
"assets/assets/images/39.jpeg": "275aaf9987a3fb4cd54cfd287dc1053b",
"assets/assets/images/31.jpeg": "233c32ea4c5d9fbe6f339c07190f3789",
"assets/assets/images/MostafaMahmoudcv.pdf": "35515970bd8599a4d7c450f546a51255",
"assets/assets/images/5.jpeg": "4e9f2a5221b150fd9ab710678b602fdc",
"assets/assets/images/38.jpeg": "c0836fad6842d405c09bdd7c6c8f7462",
"assets/assets/images/24.jpeg": "2be0fcca96b7bd9a8a17ac915775716d",
"assets/assets/images/41.jpeg": "b202e60df5dd247753047154ca6c47bc",
"assets/assets/images/32.jpeg": "369fdb5e25b387b3607cc0bf22696146",
"assets/assets/images/37.jpeg": "dc0e27bfa5d09335a553415f8db37097",
"assets/assets/images/4.jpeg": "439683073779f2d49b59aeeef0d49c54",
"assets/assets/images/17.jpeg": "ca11bbbf22679470c1580b9862187f48",
"assets/assets/images/26.jpeg": "6b4919c9cbd9a338d44aaec4975bb00b",
"assets/assets/images/9.jpeg": "38fc823d0ff27408e6e4e4f5dab46744",
"assets/assets/images/logo.png": "6a6211ce35127af5caccd30a38b11df2",
"assets/assets/images/20.jpeg": "28ec3860adec4c83cd3f09d3f42c8c51",
"assets/assets/images/12.jpeg": "1909116d8caba631bb65467485465197",
"assets/assets/images/14.jpeg": "000b28a1e34f2ce329a34359fbd006a4",
"assets/assets/images/3.jpeg": "430d22e71c9db62895986e3d604bad11",
"assets/assets/images/1.jpeg": "fe9dafef1e59cd36aaeabb3ced85a66a",
"assets/assets/images/28.jpg": "bb5523020117e73b827e1aa6586b3029",
"assets/assets/images/27.jpeg": "b7c56651db8b9b3cd65fb8d65eac9b82",
"assets/assets/images/7.jpeg": "f7b4983b072bbb679e1554778ebd4ea5",
"assets/assets/images/13.jpeg": "e19132b58a9231a7012a273335c6331a",
"assets/assets/MostafaMahmoudcv.pdf": "35515970bd8599a4d7c450f546a51255",
"assets/assets/fonts/RobotoCondensed.ttf": "0134dd8fe6fe708de73909a71d842780",
"assets/assets/fonts/Pacifico-Regular.ttf": "9b94499ccea3bd82b24cb210733c4b5e",
"assets/assets/lang/en.json": "6a6451da534888643ad7f181428a51fd",
"assets/assets/lang/ar.json": "f82c321837604d364236b081d469e28d",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "6d342eb68f170c97609e9da345464e5e",
"assets/packages/font_awesome_flutter/lib/fonts/fa-solid-900.ttf": "26f5af2d93473531f82ef5060f9c6d45",
"assets/packages/font_awesome_flutter/lib/fonts/fa-brands-400.ttf": "4e20cb87b0d43808c49449ffd69b1a74",
"assets/packages/font_awesome_flutter/lib/fonts/fa-regular-400.ttf": "1f7cb220b3f5309130bd6d9ad87e0fc0",
"assets/shaders/ink_sparkle.frag": "bb6af69544daba10b8bb89e60edaa055",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "main.dart.js",
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
