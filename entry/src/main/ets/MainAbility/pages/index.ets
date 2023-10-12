//应用/服务包含的页面。


import { MainTabBar } from './Compoents/MainTabBar'
import { MainTitleBar } from './Compoents/MainTitleBar'


@Entry
@Component
struct Index {
  @State message: string = 'Hello World'

  build() {
    Column() {
      Row() {
        MainTitleBar()
      }.height('10%').layoutWeight(1)

      Row() {
        MainTabBar()
      }.height('90%')
    }
  }
}