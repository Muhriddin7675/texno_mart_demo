package com.example.flutter_retrofit_texnomart

import android.app.Application
import com.yandex.mapkit.MapKitFactory

class MainApplication: Application() {
  override fun onCreate() {
    super.onCreate()
    MapKitFactory.setApiKey("0b30dc6f-dc51-4226-a8fc-a8c0567f500e") // Your generated API key
  }
}
