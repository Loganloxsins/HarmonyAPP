
export class NewsData {
  title: string;
  image: Resource;
  detail: Resource;
  constructor(title: string, image: Resource, detail: Resource) {
    this.title = title;
    this.image = image;
    this.detail = detail;
  }
}

export function initNewsData(): Array<NewsData> {
  const newsComposition: NewsData[] = [
    { 'title': '外交部就巴以冲突升级发声', 'image': $r('app.media.new1'), 'detail': $r('app.string.news1') },
    { 'title': '蜜雪冰城回应要将偷餐者绑天桥示众', 'image': $r('app.media.new2'), 'detail': $r('app.string.news2') },
    { 'title': '中秋国庆假期消费市场活力足', 'image': $r('app.media.new3'), 'detail': $r('app.string.news3') },
    { 'title': '阿富汗地震已致超过1000人死亡', 'image': $r('app.media.new4'), 'detail': $r('app.string.news4') },
    { 'title': '挖呀挖黄老师5场直播销售额超百万”', 'image': $r('app.media.new5'), 'detail': $r('app.string.news5') }
  ]

  let newsDataArray: Array<NewsData> = []
  for (let index = 0; index < 100; index++) {
    newsComposition.forEach(item => {
      newsDataArray.push(new NewsData(item.title, item.image, item.detail));
    })
  }
  return newsDataArray;
}