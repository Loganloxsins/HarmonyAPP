import { NewsData } from './Compoents/NewsData'
import { initNewsData } from './Compoents/NewsData'
''
import { NewsListItem } from './Compoents/NewsListItem'

@Entry
@Component
export struct NewsPage {
  private newsArray: NewsData[] = initNewsData()

  build() {
    List() {
      ForEach(this.newsArray, item => {
        ListItem() {
          NewsListItem({ newsItem: item })
        }
      })
    }
  }
}