#include <jni.h>
#include <EGL/egl.h>
#include <GLES3/gl3.h>
#include <android/native_window_jni.h>

static EGLDisplay display;
static EGLSurface surface;
static EGLContext context;
static EGLConfig config;

JNIEXPORT void JNICALL
Java_com_example_clickcounter_GLRenderer_init(JNIEnv *env, jobject thiz, jobject surface) {
    ANativeWindow *window = ANativeWindow_fromSurface(env, surface);
    display = eglGetDisplay(EGL_DEFAULT_DISPLAY);
    eglInitialize(display, NULL, NULL);

    EGLint attribs[] = {
        EGL_RENDERABLE_TYPE, EGL_OPENGL_ES3_BIT,
        EGL_SURFACE_TYPE, EGL_WINDOW_BIT,
        EGL_BLUE_SIZE, 8,
        EGL_GREEN_SIZE, 8,
        EGL_RED_SIZE, 8,
        EGL_DEPTH_SIZE, 16,
        EGL_NONE
    };
    
    EGLint numConfigs;
    eglChooseConfig(display, attribs, &config, 1, &numConfigs);
    
    surface = eglCreateWindowSurface(display, config, window, NULL);
    EGLint contextAttribs[] = { EGL_CONTEXT_CLIENT_VERSION, 3, EGL_NONE };
    context = eglCreateContext(display, config, EGL_NO_CONTEXT, contextAttribs);
    
    eglMakeCurrent(display, surface, surface, context);
}

JNIEXPORT void JNICALL
Java_com_example_clickcounter_GLRenderer_drawFrame(JNIEnv *env, jobject thiz) {
    glClearColor(0.0f, 0.0f, 1.0f, 1.0f);
    glClear(GL_COLOR_BUFFER_BIT);
    eglSwapBuffers(display, surface);
}

JNIEXPORT void JNICALL
Java_com_example_clickcounter_GLRenderer_handleTouch(JNIEnv *env, jobject thiz, jfloat x, jfloat y, jfloat screenWidth, jfloat screenHeight) {
    // Handle touch input in native code, for example:
    // Convert touch coordinates to OpenGL normalized coordinates (e.g., [0, 1])
    float normalizedX = x / screenWidth;  // screenWidth should be passed/set in native code
    float normalizedY = y / screenHeight; // screenHeight should be passed/set in native code
    
    // You can now use normalizedX and normalizedY to interact with OpenGL objects
    // For instance, you could move a 3D object based on the touch position
}