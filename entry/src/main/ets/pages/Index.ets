import router from '@ohos.router'
@Entry
@Component
struct Index {
  @State message: string = 'Hello World'

  build() {
    Row() {
      Column() {
        Text(this.message)
          .fontSize(50)
          .fontWeight(FontWeight.Bold)
          .onClick(() => {
            this.message = 'cnm de hello world'
          })
        Button() {
          Text('下一页')
            .fontSize(28)
            .fontWeight(FontWeight.Bold)
        }
        .type(ButtonType.Capsule)
        .margin({
          top: 20
        })
        .backgroundColor('#0d9ffb')
        .width('40%')
        .height('5%')
        .onClick(() => {
          router.pushUrl({
            url: 'pages/Second'
          }).then(() => {
            console.log('Success')
          }).catch((err) => {
            console.error(`fail, ${err.code}, message is ${err.message}`)
          })
        })
      }
      .width('100%')
    }
    .height('100%')
  }
}