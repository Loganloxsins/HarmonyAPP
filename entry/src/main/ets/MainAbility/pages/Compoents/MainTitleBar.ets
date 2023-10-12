@Entry
@Component
export struct MainTitleBar {
  build() {
    Column() {
      Text('明日头版新闻网')
        .fontSize('20fp')
        .margin({
          left: '24',
          right: '24',
          top: '12'
        })
    }
    .width('100%')
    .constraintSize({ minHeight: '45' })
    .alignItems(HorizontalAlign.Start)
    .backgroundColor($r('app.color.colorSubBackground'))
  }
}
//    .backgroundColor($r('app.color.colorSubBackground'))
//    .backgroundColor(Color.Red)