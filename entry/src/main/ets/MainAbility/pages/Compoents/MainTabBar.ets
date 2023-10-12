
import { NewsPage } from '../NewsPage'
import { VideoPage } from '../VideoPage'

@Entry
@Component
export struct MainTabBar {
  build() {
    Column() {
      Tabs({ barPosition: BarPosition.End }) {
        TabContent() {
          NewsPage()
        }.tabBar({ text: '新闻' })

        TabContent() {
          VideoPage()
        }.tabBar({ text: '开发中...' })

      }.barWidth(300).barHeight(50).animationDuration(100)
    }
    .width('100%')
    .height('100%')
    .backgroundColor($r('app.color.colorSubBackground'))
  }
}