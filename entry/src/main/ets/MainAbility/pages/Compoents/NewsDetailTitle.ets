import router from '@ohos.router';

@Entry
@Component
export struct NewsDetailTitle {
  build() {
    Row() {
      Flex({ alignItems: ItemAlign.Start }) {
        Image($r('app.media.back'))
          .width(21.8)
          .height(19.6)
        Text('新闻详情')
          .fontSize(20)
          .margin({ left: 17.4 })
      }
      .backgroundColor($r('app.color.colorSubBackground'))
      .height(50)
      .padding({ top: 13, bottom: 15, left: 20 })
      .onClick(() => {
        router.back()
      })
    }
  }
}