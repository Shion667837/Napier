# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Company.create!(
  id: 1,
  coop_name: 'TESLA',
  coop_body: 'TESLA（テスラ）は、アメリカの電動輸送機器およびクリーンエネルギー関連企業。
  テスラ社の現在の製品には、電気自動車、家庭用からグリッドスケールまでのバッテリー電動輸送機器、ソーラーパネル、ソーラールーフタイル、およびその他の関連製品とサービスが含まれる。
  テスラは、世界で最も売れているプラグインおよび二次電池式電気自動車の乗用車メーカーとして位置づけられており、2020年の販売において、プラグイン・セグメント（ハイブリッド車を含む）で16％、
  バッテリー・エレクトリック（純粋な電気自動車）で23％の市場シェアを獲得している。',
  coop_place: 'USA'
)

Company.create!(
  id: 2,
  coop_name: 'APPLE',
  coop_body: 'Apple Inc.（アップル）は、カリフォルニア州クパチーノに本社を置くアメリカ合衆国の多国籍テクノロジー企業。
  『iPhone』などのデジタルデバイスの設計・製造・販売や、ソフトウェア、オンラインサービスの開発・販売を行っている。',
  coop_place: 'USA'
)

Company.create!(
  id: 3,
  coop_name: 'GOOGLE',
  coop_body: 'Google LLC（グーグル）は、インターネット関連のサービスと製品に特化したアメリカ合衆国の企業。
  世界最大の検索エンジン、オンライン広告、クラウドコンピューティング、ソフトウェア、ハードウェア関連の事業がある。
  アメリカ合衆国の主要なIT企業で、GAFA、FAANGの一つ。',
  coop_place: 'USA'
)

Company.create!(
  id: 4,
  coop_name: 'AMAZON',
  coop_body: 'Amazon.com, Inc.（アマゾン・ドット・コム・インク）は、
  ワシントン州シアトルに本拠地を置くアメリカの多国籍テクノロジー企業。電子商取引、クラウドコンピューティング、デジタルストリーミング、人工知能に焦点を当てている。
  Google、Apple、マイクロソフト、Facebookと並ぶアメリカの情報技術産業のビッグファイブの一つである。
  同社は「世界で最も影響力のある経済的・文化的勢力の一つ」と呼ばれ、世界で最も価値のあるブランドとされている。',
  coop_place: 'USA'
)

Company.create!(
  id: 5,
  coop_name: 'NETFLIX',
  coop_body: 'NETFLIX（ネットフリックス）は、アメリカ合衆国に本社を置く、世界的な定額制動画配信サービス及びオンラインDVDレンタル運営会社。
  2017年12月の時点で190か国以上で配信事業を展開し、2020年の売上は250億ドル、契約者数（世界）は2020年末時点で2億370万人。
  アメリカ合衆国の主要なIT企業で、FAANGの一つである。日本法人は、Netflix合同会社。',
  coop_place: 'USA'
)
