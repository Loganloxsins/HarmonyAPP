
import router from '@ohos.router';
import { NewsData } from './NewsData'

@Entry
@Component
export struct NewsListItem {
  private newsItem: NewsData

  build() {
    Row() {
      Flex({ alignItems: ItemAlign.Start }) {
        if (this.newsItem.image != null) {
          Image(this.newsItem.image)
            .objectFit(ImageFit.Auto)
            .margin({ left: 5 })
            .height('95%')
        }
        Text(this.newsItem.title)
          .fontSize(16)
          .height('95%')
          .width(500)
          .margin({ left: 5, right: 5 })
      }
      .height(this.newsItem.image ? 100 : 80)
    }
    .onClick(() => {
      router.push({
        url: 'pages/NewsDetail',
        params: ({ data1: this.newsItem })
      })
    })
  }
}