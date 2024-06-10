class DisplayMockData {
  static final String menusByMarket =
      '[{"title":"마켓추천","tabId":10001},{"title":"베스트","tabId":10002},{"title":"특가/혜택","tabId":10003}]';
  static final String menusByBeauty =

      '[{"title":"마켓추천","tabId":20001},,{"title":"신상품","tabId":20003},{"title":"베스트","tabId":20004},{"title":"브랜드관","tabId":20005}]';

  static final String viewModulesByTabIdCaseOne =
      '[{"type":"ViewModuleA"},{"type":"ViewModuleB"},{"type":"ViewModuleC"},{"type":"ViewModuleD"},{"type":"ViewModuleE"}]';
  static final String viewModulesByTabIdCaseTwo =
      '[{"type":"ViewModuleB"},{"type":"ViewModuleC"},{"type":"ViewModuleD"},{"type":"ViewModuleE"},{"type":"ViewModuleA"}]';
  static final String viewModulesByTabIdCaseThree =
      '[{"type":"ViewModuleC"},{"type":"ViewModuleD"},{"type":"ViewModuleE"},{"type":"ViewModuleA"},{"type":"ViewModuleB"}]';
  static final String viewModulesByTabIdCaseFour =
      '[{"type":"ViewModuleD"},{"type":"ViewModuleE"},{"type":"ViewModuleA"},{"type":"ViewModuleB"},{"type":"ViewModuleC"}]';
  static final String viewModulesByTabIdCaseFive =
      '[{"type":"ViewModuleE"},{"type":"ViewModuleA"},{"type":"ViewModuleB"},{"type":"ViewModuleC"},{"type":"ViewModuleD"}]';


  static final String productInfo = '''{
        "productId": "${DateTime.now().microsecondsSinceEpoch}",
        "title":"블랙 쿠션(리필포함) 6종 택 1",
        "subtitle":"This is sample product info. it has a long long subtitle text. plz check this!",
        "price": 5000,
        "originalPrice": 10000,
        "discountRate": 50,
        "reviewCount": 3,
        "imageUrl": "https://images.unsplash.com/photo-1522335789203-aabd1fc54bc9?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=887&q=80"
      }''';
  static final String productInfo2 = '''{
        "productId": "${DateTime.now().microsecondsSinceEpoch}",
        "title":"선인장 바디워시 1L (대용량, 비건)",
        "subtitle":"This is sample product info. it has a long long subtitle text. plz check this!",
        "price": 6400,
        "originalPrice": 8000,
        "discountRate": 20,
        "reviewCount": 3,
        "imageUrl": "https://images.unsplash.com/photo-1571875257727-256c39da42af?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=880&q=80"
      }''';
  static final String productInfo3 = '''{
        "productId": "${DateTime.now().microsecondsSinceEpoch}",
        "title":"[피토메르] 특별 기획세트Ⅱ (세럼 2종(본품) + 토너(본품) 구성)",
        "subtitle":"This is sample product info. it has a long long subtitle text. plz check this!",
        "price": 8400,
        "originalPrice": 12000,
        "discountRate": 30,
        "reviewCount": 3,
        "imageUrl": "https://plus.unsplash.com/premium_photo-1674739375681-605fb3afb6ba?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=772&q=80"
      }''';
  static final String productInfo4 = '''{
        "productId": "${DateTime.now().microsecondsSinceEpoch}",
        "title":"[에스티 로더] 갈색병 세럼 75ml (+마이크로 에센스 100ml + 갈색병 15ml 증정)",
        "subtitle":"한 병으로 되찾는 피부 균형",
        "price": 37800,
        "originalPrice": 42000,
        "discountRate": 10,
        "reviewCount": 3,
        "imageUrl": "https://images.unsplash.com/photo-1617897903246-719242758050?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=687&q=80"
      }''';
  static final String productInfo5 = '''{
        "productId": "${DateTime.now().microsecondsSinceEpoch}",
        "title":"닥터지 레드 블래미쉬 수분 크림",
        "subtitle":"This is sample product info. it has a long long subtitle text. plz check this!",
        "price": 20800,
        "originalPrice": 26000,
        "discountRate": 20,
        "reviewCount": 3,
        "imageUrl": "https://images.unsplash.com/photo-1620917669809-1af0497965de?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=774&q=80"
      }''';
  static final String productInfo6 = '''{
        "productId": "${DateTime.now().microsecondsSinceEpoch}",
        "title":"[단독 기획] 에스쁘아 꾸뛰르 립틴트 ",
        "subtitle":"This is sample product info. it has a long long subtitle text. plz check this!",
        "price": 14400,
        "originalPrice": 16000,
        "discountRate": 20,
        "reviewCount": 10000000,
        "imageUrl": "https://images.unsplash.com/photo-1614267861476-0d129972a0f4?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80"
      }''';

  static String getViewModules() {
    var viewModules = [];

    final List<String> types = [
      'Beauty',
    ];

    var products = [productInfo, productInfo2, productInfo3, productInfo4, productInfo5, productInfo6];

    for (var type in types) {
      viewModules.add('''{
            "type" : "${type}",
            "title" : "${type}",
            "subtitle": "${type}-subtitle",
            "time": ${DateTime.now().add(Duration(hours: 1)).millisecondsSinceEpoch},
            "imageUrl": "https://images.unsplash.com/photo-1661956603025-8310b2e3036d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80",
            "products":[${products.join(',')}],
            "tabs": ["가전·가구 특가","프리미엄 주방 특가","뷰티 특가","프리미엄 식품 특가"]
          }''');
    }

    return '[${viewModules.join(',')}]';
  }
}