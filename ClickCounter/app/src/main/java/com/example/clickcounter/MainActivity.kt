package com.example.clickcounter

import android.content.Context
import android.os.Bundle
import android.view.MotionEvent
import android.view.Surface
import android.view.SurfaceHolder
import android.view.SurfaceView
import android.widget.Toast
import androidx.activity.ComponentActivity
import androidx.activity.enableEdgeToEdge


class MainActivity : ComponentActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        enableEdgeToEdge()
        setContentView(GLRenderer(this))
    }
}

class GLRenderer(context: Context) : SurfaceView(context), SurfaceHolder.Callback {

    external fun init(surface: Surface)
    external fun drawFrame()
    external fun handleTouch(x: Float, y: Float)

    init {
        holder.addCallback(this)
    }

    override fun surfaceCreated(holder: SurfaceHolder) {
        init(holder.surface)
        Thread {
            while (true) {
                drawFrame()
                Thread.sleep(16)  // ~60 FPS
            }
        }.start()
    }

    override fun surfaceChanged(holder: SurfaceHolder, format: Int, width: Int, height: Int) {}
    override fun surfaceDestroyed(holder: SurfaceHolder) {}

    companion object {
        init {
            System.loadLibrary("native-renderer")
        }
    }

    override fun onTouchEvent(event: MotionEvent): Boolean {
        val x = event.x
        val y = event.y

        handleTouch(x, y)  // Pass touch coordinates to native C function
        return true
    }
}