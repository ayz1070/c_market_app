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
        "subtitle":"내 피부 같은 초밀착 커버",
        "price": 5000,
        "originalPrice": 10000,
        "discountRate": 50,
        "reviewCount": 10000000,
        "imageUrl": "https://images.unsplash.com/photo-1522335789203-aabd1fc54bc9?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=887&q=80"
      }''';
  static final String productInfo2 = '''{
        "productId": "${DateTime.now().microsecondsSinceEpoch}",
        "title":"선인장 바디워시 1L (대용량, 비건)",
        "subtitle":"넉넉하게 사용하는 고보습 바디 워시",
        "price": 6400,
        "originalPrice": 8000,
        "discountRate": 20,
        "reviewCount": 10000000,
        "imageUrl": "https://images.unsplash.com/photo-1571875257727-256c39da42af?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=880&q=80"
      }''';
  static final String productInfo3 = '''{
        "productId": "${DateTime.now().microsecondsSinceEpoch}",
        "title":"[피토메르] 특별 기획세트Ⅱ (세럼 2종(본품) + 토너(본품) 구성)",
        "subtitle":"상쾌함과 개운함이 오래가는 치약",
        "price": 8400,
        "originalPrice": 12000,
        "discountRate": 30,
        "reviewCount": 10000000,
        "imageUrl": "https://plus.unsplash.com/premium_photo-1674739375681-605fb3afb6ba?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=772&q=80"
      }''';
  static final String productInfo4 = '''{
        "productId": "${DateTime.now().microsecondsSinceEpoch}",
        "title":"[에스티 로더] 갈색병 세럼 75ml (+마이크로 에센스 100ml + 갈색병 15ml 증정)",
        "subtitle":"한 병으로 되찾는 피부 균형",
        "price": 37800,
        "originalPrice": 42000,
        "discountRate": 10,
        "reviewCount": 10000000,
        "imageUrl": "https://images.unsplash.com/photo-1617897903246-719242758050?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=687&q=80"
      }''';
  static final String productInfo5 = '''{
        "productId": "${DateTime.now().microsecondsSinceEpoch}",
        "title":"닥터지 레드 블래미쉬 수분 크림",
        "subtitle":"탄탄하게 빛나는 수분 광채 피부",
        "price": 20800,
        "originalPrice": 26000,
        "discountRate": 20,
        "reviewCount": 10000000,
        "imageUrl": "https://images.unsplash.com/photo-1620917669809-1af0497965de?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=774&q=80"
      }''';
  static final String productInfo6 = '''{
        "productId": "${DateTime.now().microsecondsSinceEpoch}",
        "title":"[단독 기획] 에스쁘아 꾸뛰르 립틴트 ",
        "subtitle":"탱글한 입술을 위한 최고의 아이템",
        "price": 14400,
        "originalPrice": 16000,
        "discountRate": 20,
        "reviewCount": 10000000,
        "imageUrl": "https://images.unsplash.com/photo-1614267861476-0d129972a0f4?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80"
      }''';
  static final String productInfo7 = '''{
        "productId": "${DateTime.now().microsecondsSinceEpoch}",
        "title":"[단독 기획] 에스쁘아 꾸뛰르 립틴트 ",
        "subtitle":"탱글한 입술을 위한 최고의 아이템",
        "price": 14400,
        "originalPrice": 16000,
        "discountRate": 20,
        "reviewCount": 10000000,
        "imageUrl": "https://images.unsplash.com/photo-1559056199-641a0ac8b55e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80"
      }''';
  static final String productInfo8 = '''{
        "productId": "${DateTime.now().microsecondsSinceEpoch}",
        "title":"[단독 기획] 에스쁘아 꾸뛰르 립틴트 ",
        "subtitle":"탱글한 입술을 위한 최고의 아이템",
        "price": 14400,
        "originalPrice": 16000,
        "discountRate": 20,
        "reviewCount": 10000000,
        "imageUrl": "https://images.unsplash.com/photo-1547949003-9792a18a2601?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80"
      }''';
  static final String productInfo9 = '''{
        "productId": "${DateTime.now().microsecondsSinceEpoch}",
        "title":"[단독 기획] 에스쁘아 꾸뛰르 립틴트 ",
        "subtitle":"탱글한 입술을 위한 최고의 아이템",
        "price": 14400,
        "originalPrice": 16000,
        "discountRate": 20,
        "reviewCount": 10000000,
        "imageUrl": "https://images.unsplash.com/photo-1513116476489-7635e79feb27?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=793&q=80"
      }''';
  static final String productInfo10 = '''{
        "productId": "${DateTime.now().microsecondsSinceEpoch}",
        "title":"[단독 기획] 에스쁘아 꾸뛰르 립틴트 ",
        "subtitle":"탱글한 입술을 위한 최고의 아이템",
        "price": 14400,
        "originalPrice": 16000,
        "discountRate": 20,
        "reviewCount": 10000000,
        "imageUrl": "https://images.unsplash.com/photo-1520931061294-db3e762a9273?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80"
      }''';
  static final String productInfo11 = '''{
        "productId": "${DateTime.now().microsecondsSinceEpoch}",
        "title":"[단독 기획] 에스쁘아 꾸뛰르 립틴트 ",
        "subtitle":"탱글한 입술을 위한 최고의 아이템",
        "price": 14400,
        "originalPrice": 16000,
        "discountRate": 20,
        "reviewCount": 10000000,
        "imageUrl": "https://images.unsplash.com/photo-1517088587697-8de5e72b421b?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=871&q=80"
      }''';
  static final String productInfo12 = '''{
        "productId": "${DateTime.now().microsecondsSinceEpoch}",
        "title":"[단독 기획] 에스쁘아 꾸뛰르 립틴트 ",
        "subtitle":"탱글한 입술을 위한 최고의 아이템",
        "price": 14400,
        "originalPrice": 16000,
        "discountRate": 20,
        "reviewCount": 10000000,
        "imageUrl": "https://images.unsplash.com/photo-1567206563064-6f60f40a2b57?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=774&q=80"
      }''';
  static final String productInfo13 = '''{
        "productId": "${DateTime.now().microsecondsSinceEpoch}",
        "title":"[케라스타즈] 엘릭서 얼팀 오리지널 100ml + 엘릭서 얼팀 오리지널 15ml(마이뷰티박스 가입일 구매 시 +3%적립)",
        "subtitle":"얼팀 오리지널을 이 가격에?!",
        "price": 14400,
        "originalPrice": 16000,
        "discountRate": 20,
        "reviewCount": 10000000,
        "imageUrl": "https://plus.unsplash.com/premium_photo-1679064287823-fbd549bf47dd?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=774&q=80"
      }''';
  static final String productInfo14 = '''{
        "productId": "${DateTime.now().microsecondsSinceEpoch}",
        "title":"[산타마리아노벨라] 아쿠아 디 로즈 2종 (택1) (장미수 토너)",
        "subtitle":"사계절 멀티토너",
        "price": 14400,
        "originalPrice": 16000,
        "discountRate": 20,
        "reviewCount": 10000000,
        "imageUrl": "https://plus.unsplash.com/premium_photo-1673822402526-04413688da96?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=580&q=80"
      }''';
  static final String productInfo15 = '''{
        "productId": "${DateTime.now().microsecondsSinceEpoch}",
        "title": "[에끌라두] 골든 샌달 우드 괄사 페이스&두피 마시지",
        "subtitle": "시원하고 섬세하게 마사지",
        "price": 14400,
        "originalPrice": 16000,
        "discountRate": 20,
        "reviewCount": 10000000,
        "imageUrl": "https://images.unsplash.com/photo-1614859475299-814a09cd2e79?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80"
      }''';
  static final String productInfo16 = '''{
        "productId": "${DateTime.now().microsecondsSinceEpoch}",
        "title":"[KS365] 데일리 항균처리 쿠션 퍼프 2종",
        "subtitle":"향균처리가 되어 있는 각성비 물방울 모양 퍼프",
        "price": 14400,
        "originalPrice": 16000,
        "discountRate": 20,
        "reviewCount": 10000000,
        "imageUrl": "https://images.unsplash.com/photo-1590439471364-192aa70c0b53?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=687&q=80"
      }''';

  static String getViewModules({required int tabId}) {
    var viewModules = [];

    final List<String> types = [
      'Beauty',
      'Best6',
      'Benefit'
    ];

    var products1 = [productInfo, productInfo2, productInfo3, productInfo4, productInfo5, productInfo6];
    var products2 = [productInfo7, productInfo8, productInfo9, productInfo10, productInfo11, productInfo12];
    var products3 = [productInfo13, productInfo14, productInfo15, productInfo16, productInfo4, productInfo5];

    String type;
    List<String> products;

    if (tabId == 10001) {
      type = types[0];
      products = products1;
    } else if (tabId == 10002) {
      type = types[1];
      products = products2;
    } else if (tabId == 10003) {
      type = types[2];
      products = products3;
    } else {
      type = types[0];
      products = products1;
    }

    viewModules.add('''{
      "type" : "${type}",
      "title" : "${type}",
      "subtitle": "${type}-subtitle",
      "time": ${DateTime.now().add(Duration(hours: 1)).millisecondsSinceEpoch},
      "imageUrl": "https://images.unsplash.com/photo-1661956603025-8310b2e3036d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80",
      "products":[${products.join(',')}],
      "tabs": ["가전·가구 특가","프리미엄 주방 특가","뷰티 특가","프리미엄 식품 특가"]
    }''');

    return '[${viewModules.join(',')}]';
  }
}