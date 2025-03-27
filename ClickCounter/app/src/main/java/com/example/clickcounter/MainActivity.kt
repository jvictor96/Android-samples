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
        super.onTouchEvent(event)

        when (event.action) {
            MotionEvent.ACTION_DOWN -> {
                setBackgroundColor(PRESSED_COLOR)
                return true
            }

            MotionEvent.ACTION_UP -> {
                setBackgroundColor(NORMAL_COLOR)

                // For this particular app we want the main work to happen
                // on ACTION_UP rather than ACTION_DOWN. So this is where
                // we will call performClick().
                performClick()
                return true
            }
        }
        return false
    }

    // Because we call this from onTouchEvent, this code will be executed for both
    // normal touch events and for when the system calls this using Accessibility
    override fun performClick(): Boolean {
        super.performClick()

        launchMissile()

        return true
    }

    private fun launchMissile() {
        Toast.makeText(context, "Missile launched", Toast.LENGTH_SHORT).show()
    }
}