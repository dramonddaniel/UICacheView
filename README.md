## UICacheView
A cocoapod that allows you to load images directly via a URL, as well as helps save the mobile data of your users by caching each and every image that they load.

```swift

lazy var cache: UICacheView = {
    let view = UICacheView(frame: .zero)
    let url = "https://s3.amazonaws.com/cdn-origin-etr.akc.org/wp-content/uploads/2017/11/12193133/German-Shepherd-Puppy-Fetch.jpg"
    view.loadImageFromURL(url)
    view.contentMode = .scaleAspectFit
    view.backgroundColor = .black
    return view
}()

self.view.addSubview(cache)
let x: CGFloat = (self.view.frame.width / 2) - 150
let y: CGFloat = (self.view.frame.height / 2) - 150
self.cache.frame = CGRect(x: x, y: y, width: 300, height: 300)
```

<p align="center">
  <img src="https://user-images.githubusercontent.com/19694636/52917266-5bc24700-32e1-11e9-8d5c-5da743829d3d.png" width="40%"/>
</p>

---

## Contributors 
- Daniel Dramond <dramonddaniel@gmail.com>

## License & Copyright

© Daniel Dramond
