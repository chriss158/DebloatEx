.class Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;
.super Ljava/lang/Thread;
.source "FireflyRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/beam/FireflyRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FireflyRenderThread"
.end annotation


# instance fields
.field mEgl:Ljavax/microedition/khronos/egl/EGL10;

.field mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

.field mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

.field mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

.field mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

.field volatile mFinished:Z

.field mGL:Ljavax/microedition/khronos/opengles/GL10;

.field mTextureId:I

.field final synthetic this$0:Lcom/android/nfc/beam/FireflyRenderer;


# direct methods
.method private constructor <init>(Lcom/android/nfc/beam/FireflyRenderer;)V
    .registers 2

    .prologue
    .line 157
    iput-object p1, p0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->this$0:Lcom/android/nfc/beam/FireflyRenderer;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/nfc/beam/FireflyRenderer;Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;)V
    .registers 3

    .prologue
    .line 157
    invoke-direct {p0, p1}, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;-><init>(Lcom/android/nfc/beam/FireflyRenderer;)V

    return-void
.end method

.method private checkCurrent()V
    .registers 6

    .prologue
    .line 281
    iget-object v0, p0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    iget-object v1, p0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentContext()Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 282
    iget-object v0, p0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v1, p0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    const/16 v2, 0x3059

    invoke-interface {v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentSurface(I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4d

    .line 283
    :cond_1e
    iget-object v0, p0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v3, p0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v4, p0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v0

    if-nez v0, :cond_4d

    .line 284
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "eglMakeCurrent failed "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 285
    iget-object v2, p0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v2

    invoke-static {v2}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 284
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 288
    :cond_4d
    return-void
.end method

.method private chooseEglConfig()Ljavax/microedition/khronos/egl/EGLConfig;
    .registers 8

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x1

    .line 354
    new-array v5, v4, [I

    .line 355
    .local v5, "configsCount":[I
    new-array v3, v4, [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 356
    .local v3, "configs":[Ljavax/microedition/khronos/egl/EGLConfig;
    iget-object v0, p0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, Lcom/android/nfc/beam/FireflyRenderer;->sEglConfig:[I

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v0

    if-nez v0, :cond_31

    .line 357
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "eglChooseConfig failed "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 358
    iget-object v2, p0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v2

    invoke-static {v2}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 357
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 359
    :cond_31
    aget v0, v5, v6

    if-lez v0, :cond_38

    .line 360
    aget-object v0, v3, v6

    .line 362
    :goto_37
    return-object v0

    :cond_38
    const/4 v0, 0x0

    goto :goto_37
.end method

.method private finishGL()V
    .registers 6

    .prologue
    .line 336
    iget-object v0, p0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-nez v0, :cond_9

    .line 351
    :cond_8
    :goto_8
    return-void

    .line 341
    :cond_9
    iget-object v0, p0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 342
    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    .line 341
    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 344
    iget-object v0, p0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v0, :cond_23

    .line 345
    iget-object v0, p0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 348
    :cond_23
    iget-object v0, p0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    if-eqz v0, :cond_8

    .line 349
    iget-object v0, p0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    goto :goto_8
.end method


# virtual methods
.method public finish()V
    .registers 2

    .prologue
    .line 246
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mFinished:Z

    .line 247
    return-void
.end method

.method initGL()Z
    .registers 9

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x0

    .line 292
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v2

    check-cast v2, Ljavax/microedition/khronos/egl/EGL10;

    iput-object v2, p0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    .line 294
    iget-object v2, p0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v2, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v2

    iput-object v2, p0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 295
    iget-object v2, p0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-ne v2, v4, :cond_3a

    .line 296
    const-string v2, "NfcFireflyThread"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "eglGetDisplay failed "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 297
    iget-object v5, p0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v5}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v5

    invoke-static {v5}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 296
    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 332
    :goto_39
    return v2

    .line 301
    :cond_3a
    const/4 v2, 0x2

    new-array v1, v2, [I

    .line 302
    .local v1, "version":[I
    iget-object v2, p0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v4, p0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v2, v4, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    move-result v2

    if-nez v2, :cond_67

    .line 303
    const-string v2, "NfcFireflyThread"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "eglInitialize failed "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 304
    iget-object v5, p0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v5}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v5

    invoke-static {v5}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 303
    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 305
    goto :goto_39

    .line 308
    :cond_67
    invoke-direct {p0}, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->chooseEglConfig()Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v2

    iput-object v2, p0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    .line 309
    iget-object v2, p0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    if-nez v2, :cond_7a

    .line 310
    const-string v2, "NfcFireflyThread"

    const-string v4, "eglConfig not initialized."

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 311
    goto :goto_39

    .line 314
    :cond_7a
    iget-object v2, p0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v4, p0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v5, p0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    sget-object v6, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v2, v4, v5, v6, v7}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v2

    iput-object v2, p0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 316
    iget-object v2, p0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v4, p0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v5, p0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    iget-object v6, p0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->this$0:Lcom/android/nfc/beam/FireflyRenderer;

    iget-object v6, v6, Lcom/android/nfc/beam/FireflyRenderer;->mSurface:Landroid/graphics/SurfaceTexture;

    invoke-interface {v2, v4, v5, v6, v7}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateWindowSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v2

    iput-object v2, p0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 318
    iget-object v2, p0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v2, :cond_a2

    iget-object v2, p0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-ne v2, v4, :cond_c3

    .line 319
    :cond_a2
    iget-object v2, p0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    .line 320
    .local v0, "error":I
    const-string v2, "NfcFireflyThread"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "createWindowSurface returned error "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 321
    goto/16 :goto_39

    .line 324
    .end local v0    # "error":I
    :cond_c3
    iget-object v2, p0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v4, p0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v5, p0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v6, p0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v7, p0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v2, v4, v5, v6, v7}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v2

    if-nez v2, :cond_f4

    .line 325
    const-string v2, "NfcFireflyThread"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "eglMakeCurrent failed "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 326
    iget-object v5, p0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v5}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v5

    invoke-static {v5}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 325
    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 327
    goto/16 :goto_39

    .line 330
    :cond_f4
    iget-object v2, p0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-virtual {v2}, Ljavax/microedition/khronos/egl/EGLContext;->getGL()Ljavax/microedition/khronos/opengles/GL;

    move-result-object v2

    check-cast v2, Ljavax/microedition/khronos/opengles/GL10;

    iput-object v2, p0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mGL:Ljavax/microedition/khronos/opengles/GL10;

    .line 332
    const/4 v2, 0x1

    goto/16 :goto_39
.end method

.method loadStarTexture()V
    .registers 8

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 250
    new-array v2, v5, [I

    .line 251
    .local v2, "textureIds":[I
    iget-object v3, p0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mGL:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v3, v5, v2, v4}, Ljavax/microedition/khronos/opengles/GL10;->glGenTextures(I[II)V

    .line 252
    aget v3, v2, v4

    iput v3, p0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mTextureId:I

    .line 254
    const/4 v1, 0x0

    .line 257
    .local v1, "in":Ljava/io/InputStream;
    :try_start_e
    iget-object v3, p0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->this$0:Lcom/android/nfc/beam/FireflyRenderer;

    iget-object v3, v3, Lcom/android/nfc/beam/FireflyRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    const-string v4, "star.png"

    invoke-virtual {v3, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 259
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 260
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-object v3, p0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mGL:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v4, 0xde1

    iget v5, p0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mTextureId:I

    invoke-interface {v3, v4, v5}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 262
    iget-object v3, p0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mGL:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v4, 0xde1

    const/16 v5, 0x2801

    const/16 v6, 0x2601

    invoke-interface {v3, v4, v5, v6}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterx(III)V

    .line 263
    iget-object v3, p0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mGL:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v4, 0xde1

    const/16 v5, 0x2800

    const/16 v6, 0x2601

    invoke-interface {v3, v4, v5, v6}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterx(III)V

    .line 265
    const/16 v3, 0xde1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v4, v0, v5}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 267
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_49} :catch_4f
    .catchall {:try_start_e .. :try_end_49} :catchall_5f

    .line 272
    if-eqz v1, :cond_4e

    .line 274
    :try_start_4b
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_4e} :catch_68

    .line 278
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_4e
    :goto_4e
    return-void

    .line 270
    :catch_4f
    move-exception v3

    :try_start_50
    const-string v3, "NfcFireflyThread"

    const-string v4, "IOException opening assets."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_57
    .catchall {:try_start_50 .. :try_end_57} :catchall_5f

    .line 272
    if-eqz v1, :cond_4e

    .line 274
    :try_start_59
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5c
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_5c} :catch_5d

    goto :goto_4e

    .line 275
    :catch_5d
    move-exception v3

    goto :goto_4e

    .line 271
    :catchall_5f
    move-exception v3

    .line 272
    if-eqz v1, :cond_65

    .line 274
    :try_start_62
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_65
    .catch Ljava/io/IOException; {:try_start_62 .. :try_end_65} :catch_66

    .line 277
    :cond_65
    :goto_65
    throw v3

    :catch_66
    move-exception v4

    goto :goto_65

    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    :catch_68
    move-exception v3

    goto :goto_4e
.end method

.method public run()V
    .registers 19

    .prologue
    .line 173
    invoke-virtual/range {p0 .. p0}, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->initGL()Z

    move-result v2

    if-nez v2, :cond_e

    .line 174
    const-string v2, "NfcFireflyThread"

    const-string v3, "Failed to initialize OpenGL."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    :goto_d
    return-void

    .line 177
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->loadStarTexture()V

    .line 179
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mGL:Ljavax/microedition/khronos/opengles/GL10;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-interface {v2, v3, v4, v5, v6}, Ljavax/microedition/khronos/opengles/GL10;->glClearColor(FFFF)V

    .line 181
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mGL:Ljavax/microedition/khronos/opengles/GL10;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->this$0:Lcom/android/nfc/beam/FireflyRenderer;

    iget v5, v5, Lcom/android/nfc/beam/FireflyRenderer;->mDisplayWidth:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->this$0:Lcom/android/nfc/beam/FireflyRenderer;

    iget v6, v6, Lcom/android/nfc/beam/FireflyRenderer;->mDisplayHeight:I

    invoke-interface {v2, v3, v4, v5, v6}, Ljavax/microedition/khronos/opengles/GL10;->glViewport(IIII)V

    .line 184
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mGL:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v3, 0x1701

    invoke-interface {v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 185
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mGL:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v2}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 186
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mGL:Ljavax/microedition/khronos/opengles/GL10;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->this$0:Lcom/android/nfc/beam/FireflyRenderer;

    iget v3, v3, Lcom/android/nfc/beam/FireflyRenderer;->mDisplayWidth:I

    neg-int v3, v3

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->this$0:Lcom/android/nfc/beam/FireflyRenderer;

    iget v4, v4, Lcom/android/nfc/beam/FireflyRenderer;->mDisplayWidth:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->this$0:Lcom/android/nfc/beam/FireflyRenderer;

    iget v5, v5, Lcom/android/nfc/beam/FireflyRenderer;->mDisplayHeight:I

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->this$0:Lcom/android/nfc/beam/FireflyRenderer;

    iget v6, v6, Lcom/android/nfc/beam/FireflyRenderer;->mDisplayHeight:I

    neg-int v6, v6

    int-to-float v6, v6

    const/high16 v7, 0x42480000    # 50.0f

    const/high16 v8, 0x42c80000    # 100.0f

    invoke-interface/range {v2 .. v8}, Ljavax/microedition/khronos/opengles/GL10;->glFrustumf(FFFFFF)V

    .line 189
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mGL:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v3, 0x1700

    invoke-interface {v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 190
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mGL:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v2}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 192
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mGL:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v3, 0xc50

    const/16 v4, 0x1102

    invoke-interface {v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glHint(II)V

    .line 193
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mGL:Ljavax/microedition/khronos/opengles/GL10;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glDepthMask(Z)V

    .line 196
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->this$0:Lcom/android/nfc/beam/FireflyRenderer;

    iget-object v3, v2, Lcom/android/nfc/beam/FireflyRenderer;->mFireflies:[Lcom/android/nfc/beam/FireflyRenderer$Firefly;

    array-length v4, v3

    const/4 v2, 0x0

    :goto_96
    if-lt v2, v4, :cond_ab

    .line 200
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_99
    const/4 v2, 0x3

    if-lt v12, v2, :cond_b3

    .line 210
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 212
    .local v14, "startTime":J
    :goto_a0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mFinished:Z

    if-eqz v2, :cond_dd

    .line 242
    invoke-direct/range {p0 .. p0}, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->finishGL()V

    goto/16 :goto_d

    .line 196
    .end local v12    # "i":I
    .end local v14    # "startTime":J
    :cond_ab
    aget-object v9, v3, v2

    .line 197
    .local v9, "firefly":Lcom/android/nfc/beam/FireflyRenderer$Firefly;
    invoke-virtual {v9}, Lcom/android/nfc/beam/FireflyRenderer$Firefly;->reset()V

    .line 196
    add-int/lit8 v2, v2, 0x1

    goto :goto_96

    .line 203
    .end local v9    # "firefly":Lcom/android/nfc/beam/FireflyRenderer$Firefly;
    .restart local v12    # "i":I
    :cond_b3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mGL:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v3, 0x4000

    invoke-interface {v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glClear(I)V

    .line 204
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    move-result v2

    if-nez v2, :cond_da

    .line 205
    const-string v2, "NfcFireflyThread"

    const-string v3, "Could not swap buffers"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mFinished:Z

    .line 200
    :cond_da
    add-int/lit8 v12, v12, 0x1

    goto :goto_99

    .line 213
    .restart local v14    # "startTime":J
    :cond_dd
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v16, v2, v14

    .line 214
    .local v16, "timeElapsedMs":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 216
    invoke-direct/range {p0 .. p0}, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->checkCurrent()V

    .line 218
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mGL:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v3, 0x4000

    invoke-interface {v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glClear(I)V

    .line 219
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mGL:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v2}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 221
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mGL:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v3, 0xde1

    invoke-interface {v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 222
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mGL:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v3, 0xbe2

    invoke-interface {v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 223
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mGL:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v3, 0x302

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    .line 225
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->this$0:Lcom/android/nfc/beam/FireflyRenderer;

    iget-object v3, v2, Lcom/android/nfc/beam/FireflyRenderer;->mFireflies:[Lcom/android/nfc/beam/FireflyRenderer$Firefly;

    array-length v4, v3

    const/4 v2, 0x0

    :goto_11e
    if-lt v2, v4, :cond_155

    .line 230
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    move-result v2

    if-nez v2, :cond_13e

    .line 231
    const-string v2, "NfcFireflyThread"

    const-string v3, "Could not swap buffers"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mFinished:Z

    .line 235
    :cond_13e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v10, v2, v14

    .line 237
    .local v10, "elapsed":J
    const-wide/16 v2, 0x1e

    sub-long/2addr v2, v10

    const-wide/16 v4, 0x0

    :try_start_149
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_150
    .catch Ljava/lang/InterruptedException; {:try_start_149 .. :try_end_150} :catch_152

    goto/16 :goto_a0

    :catch_152
    move-exception v2

    goto/16 :goto_a0

    .line 225
    .end local v10    # "elapsed":J
    :cond_155
    aget-object v9, v3, v2

    .line 226
    .restart local v9    # "firefly":Lcom/android/nfc/beam/FireflyRenderer$Firefly;
    move-wide/from16 v0, v16

    invoke-virtual {v9, v0, v1}, Lcom/android/nfc/beam/FireflyRenderer$Firefly;->updatePositionAndScale(J)V

    .line 227
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/nfc/beam/FireflyRenderer$FireflyRenderThread;->mGL:Ljavax/microedition/khronos/opengles/GL10;

    invoke-virtual {v9, v5}, Lcom/android/nfc/beam/FireflyRenderer$Firefly;->draw(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 225
    add-int/lit8 v2, v2, 0x1

    goto :goto_11e
.end method
