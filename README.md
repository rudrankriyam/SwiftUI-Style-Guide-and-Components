# SwiftUI Style Guide and Components

I respect everyone's way to writing and structuring their SwiftUI code, and here's mine. :] (Inspired by the well known [The Official raywenderlich.com Swift Style Guide](https://github.com/raywenderlich/swift-style-guide))

You will also find few on the components from my apps.

## Modifiers 

I prefer creating a lot of reusable modifiers as functions, and adding them to appropriate extensions where applicable. 

### Text
```swift
extension Text {
  func headlineFont() -> some View {
    self
      .kerning(1)
      .font(.headline)
      .frame(maxWidth: .infinity, alignment: .leading)
      .padding([.horizontal, .top])
      .accessibility(addTraits: .isHeader)
  }

  func largeTitleFont() -> some View {
    self
      .font(.largeTitle)
      .bold()
      .frame(maxWidth: .infinity, alignment: .leading)
      .padding(.top, 32)
      .accessibility(addTraits: .isHeader)
  }
}
```

### View
```swift
extension View {
  func customBackground(color: Color) -> some View {
    self
      .background(RoundedRectangle(cornerRadius: 16, style: .continuous)
        .fill(color))
  }
}
```
