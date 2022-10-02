.class public Lcom/motorola/camera/utility/EGLHelper;
.super Ljava/lang/Object;
.source "EGLHelper.java"


# instance fields
.field public mEGL10:Ljavax/microedition/khronos/egl/EGL10;

.field public mEGLConfig:Ljavax/microedition/khronos/egl/EGLConfig;

.field public mEGLContext:Ljavax/microedition/khronos/egl/EGLContext;

.field public mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

.field public mEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;


# direct methods
.method public constructor <init>(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLContext;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    iput-object v0, p0, Lcom/motorola/camera/utility/EGLHelper;->mEGLContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 3
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    iput-object v0, p0, Lcom/motorola/camera/utility/EGLHelper;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 4
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    iput-object v0, p0, Lcom/motorola/camera/utility/EGLHelper;->mEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 5
    iput-object p1, p0, Lcom/motorola/camera/utility/EGLHelper;->mEGL10:Ljavax/microedition/khronos/egl/EGL10;

    .line 6
    iput-object p2, p0, Lcom/motorola/camera/utility/EGLHelper;->mEGLContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 7
    iput-object p3, p0, Lcom/motorola/camera/utility/EGLHelper;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 8
    iput-object p4, p0, Lcom/motorola/camera/utility/EGLHelper;->mEGLConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    return-void
.end method


# virtual methods
.method public createWindowSurface(Landroid/view/Surface;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/utility/EGLHelper;->mEGL10:Ljavax/microedition/khronos/egl/EGL10;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/motorola/camera/utility/EGLHelper;->mEGLConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/motorola/camera/utility/EGLHelper;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-eq v0, v1, :cond_1

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p1}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/utility/EGLHelper;->mEGL10:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/motorola/camera/utility/EGLHelper;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/motorola/camera/utility/EGLHelper;->mEGLConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-static {v0, v1, v2, p1}, Lcom/motorola/camera/ui/widgets/gl/EglToolBox;->createWindowSurface(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/utility/EGLHelper;->mEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    return-void

    :cond_1
    :goto_0
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 4
    iget-object v2, p0, Lcom/motorola/camera/utility/EGLHelper;->mEGL10:Ljavax/microedition/khronos/egl/EGL10;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/motorola/camera/utility/EGLHelper;->mEGLConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object p0, p0, Lcom/motorola/camera/utility/EGLHelper;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    aput-object p0, v0, v1

    const/4 p0, 0x3

    aput-object p1, v0, p0

    const-string p0, "Failed to create window surface,mEGL10:%s,mEGLConfig:%s,mEGLDisplay:%s,surface:%s"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "EGLHelper"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
