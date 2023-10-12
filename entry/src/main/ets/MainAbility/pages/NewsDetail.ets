import router from '@ohos.router';
import { NewsDetailTitle } from './Compoents/NewsDetailTitle'
import { NewsData } from './Compoents/NewsData'

@Entry
@Component
struct NewsDetail {
  private newsItem: NewsData = router.getParams()['data1'] as NewsData

  build() {
    Column() {
      NewsDetailTitle()
      Stack({ alignContent: Alignment.TopStart }) {
        Scroll() {
          Column() {
            Text(this.newsItem.title)
              .fontSize(20)
              .margin({ left: 5, right: 5 })
            if (this.newsItem.image != null) {
              Image(this.newsItem.image)
                .objectFit(ImageFit.Contain)
                .height(250)
                .margin({ left: 5, right: 5, top: 5 })
                .onClick(() => {
                  router.push({
                    url: 'pages/FullImagePage',
                    params: ({ data1: this.newsItem.image })
                  })
                })
                .animation({ duration: 0 })
            }
            Text(this.newsItem.detail)
              .fontSize(16)
              .margin({ left: 5, right: 5, top: 5 })
          }
          .alignItems(HorizontalAlign.Start)
        }
      }
    }
    .alignItems(HorizontalAlign.Center)
  }
}
