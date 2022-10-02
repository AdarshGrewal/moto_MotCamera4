.class public Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView$ContextFactory;
.super Ljava/lang/Object;
.source "PreviewSurfaceView.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$EGLContextFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ContextFactory"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView$1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView$ContextFactory;->this$0:Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLContext;
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView$ContextFactory;->this$0:Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;

    const-string v1, "PreviewSurfaceView"

    const/4 v2, 0x2

    new-array v3, v2, [I

    .line 2
    fill-array-data v3, :array_0

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    const/4 v6, 0x1

    if-ge v5, v2, :cond_1

    .line 3
    aget v7, v3, v5

    :try_start_0
    const-string v8, "egl"

    .line 4
    invoke-static {p1, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "display"

    invoke-static {p2, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "config"

    invoke-static {p3, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    sget-object v8, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    const-string v9, "EGL_NO_CONTEXT"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p2, p3, v8, v7}, Lcom/motorola/camera/ui/widgets/gl/EglToolBox;->createContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v8

    .line 6
    sget-object v9, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    if-eq v8, v9, :cond_0

    .line 7
    sput v7, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->sVersion:I

    goto :goto_2

    .line 8
    :cond_0
    sget v8, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->$r8$clinit:I

    const-string v8, "Failed to create OpenGL ES context with version:%s"

    new-array v9, v6, [Ljava/lang/Object;

    .line 9
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v4

    .line 10
    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v8

    .line 11
    sget v9, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->$r8$clinit:I

    new-array v9, v2, [Ljava/lang/Object;

    .line 12
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v9, v4

    invoke-virtual {v8}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v9, v6

    const-string v6, "Failed to create OpenGL ES context with version:%s,%s"

    .line 13
    invoke-static {v6, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 14
    :cond_1
    sget-object v8, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    .line 15
    :goto_2
    iput-object v8, v0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 16
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView$ContextFactory;->this$0:Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;

    .line 17
    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/TextureManager;

    .line 18
    invoke-virtual {p1, v6}, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->setValidContext(Z)V

    .line 19
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView$ContextFactory;->this$0:Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;

    .line 20
    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/TextureManager;

    .line 21
    monitor-enter p1

    .line 22
    :try_start_1
    iget-object p2, p1, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mComponents:Ljava/util/Map;

    sget-object p3, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->TEXTURE_ATLAS:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez p2, :cond_2

    .line 23
    monitor-exit p1

    goto :goto_3

    .line 24
    :cond_2
    :try_start_2
    invoke-virtual {p2}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 25
    invoke-virtual {p2, v4}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->doUnloadTextures(Z)V

    .line 26
    :cond_3
    invoke-virtual {p2}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->doLoadTextures()V

    .line 27
    iget-object p2, p1, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    new-array v0, v2, [Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    iget-object v1, p1, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mComponents:Ljava/util/Map;

    .line 28
    invoke-interface {v1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    aput-object p3, v0, v4

    iget-object p3, p1, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mComponents:Ljava/util/Map;

    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->CAMERA_PREVIEW:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    .line 29
    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    aput-object p3, v0, v6

    .line 30
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    check-cast p2, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p2, p3}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->registerStateChangeListener(Ljava/util/Collection;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 31
    monitor-exit p1

    .line 32
    :goto_3
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView$ContextFactory;->this$0:Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;

    .line 33
    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    .line 34
    const-class p2, Lcom/motorola/camera/cli/DualPreviewManager;

    monitor-enter p2

    :try_start_3
    const-string p3, "sharedContextProvider"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    new-instance p3, Ljava/lang/ref/WeakReference;

    invoke-direct {p3, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object p3, Lcom/motorola/camera/cli/DualPreviewManager;->sharedContextProviderWeakReference:Ljava/lang/ref/WeakReference;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 36
    monitor-exit p2

    .line 37
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView$ContextFactory;->this$0:Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    return-object p0

    :catchall_0
    move-exception p0

    .line 38
    monitor-exit p2

    throw p0

    :catchall_1
    move-exception p0

    .line 39
    monitor-exit p1

    throw p0

    :array_0
    .array-data 4
        0x3
        0x2
    .end array-data
.end method

.method public destroyContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView$ContextFactory;->this$0:Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;

    .line 2
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/TextureManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iput-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mPreTouchDownCmp:Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    .line 5
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mComponents:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    if-eqz v3, :cond_0

    .line 6
    invoke-virtual {v3}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x1

    .line 7
    invoke-virtual {v3, v4}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->doUnloadTextures(Z)V

    goto :goto_0

    .line 8
    :cond_2
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mComponents:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    .line 9
    iget-object v2, v2, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    if-nez v2, :cond_3

    goto :goto_1

    .line 10
    :cond_3
    invoke-virtual {v2, v3}, Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;->unregisterStateChangeListener(Ljava/util/Collection;)V

    .line 11
    :goto_1
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mVboManager:Lcom/motorola/camera/ui/widgets/gl/VboManager;

    if-eqz v2, :cond_4

    .line 12
    iget-object v3, v2, Lcom/motorola/camera/ui/widgets/gl/VboManager;->mVboMap:Ljava/util/EnumMap;

    sget-object v4, Lcom/motorola/camera/ui/widgets/gl/VboManager$$ExternalSyntheticLambda0;->INSTANCE:Lcom/motorola/camera/ui/widgets/gl/VboManager$$ExternalSyntheticLambda0;

    invoke-virtual {v3, v4}, Ljava/util/EnumMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 13
    iget-object v2, v2, Lcom/motorola/camera/ui/widgets/gl/VboManager;->mVboMap:Ljava/util/EnumMap;

    invoke-virtual {v2}, Ljava/util/EnumMap;->clear()V

    .line 14
    :cond_4
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getShaderFactory()Lcom/motorola/camera/ui/widgets/gl/ShaderFactory;

    move-result-object v2

    .line 15
    iget-object v2, v2, Lcom/motorola/camera/ui/widgets/gl/ShaderFactory;->mShaders:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 16
    iput-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mViewSize:Lcom/motorola/camera/PreviewSize;

    .line 17
    iput-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mPreviewSize:Lcom/motorola/camera/PreviewSize;

    .line 18
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mFlags:Lcom/motorola/camera/utility/Flags;

    .line 19
    iget-object v2, v2, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 20
    sget-object v2, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->sResourcesMaps:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    monitor-exit v0

    goto :goto_2

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    .line 22
    :cond_5
    :goto_2
    const-class v0, Lcom/motorola/camera/cli/DualPreviewManager;

    monitor-enter v0

    .line 23
    :try_start_1
    sput-object v1, Lcom/motorola/camera/cli/DualPreviewManager;->sharedContextProviderWeakReference:Ljava/lang/ref/WeakReference;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 24
    monitor-exit v0

    .line 25
    invoke-static {p1, p2, p3}, Lcom/motorola/camera/ui/widgets/gl/EglToolBox;->destroyContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 26
    sget p1, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->$r8$clinit:I

    const-string p1, "PreviewSurfaceView"

    const-string p2, "Failed to destroy OpenGL ES context"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    :cond_6
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView$ContextFactory;->this$0:Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;

    sget-object p1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 28
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/TextureManager;

    const/4 p1, 0x0

    .line 29
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->setValidContext(Z)V

    return-void

    :catchall_1
    move-exception p0

    .line 30
    monitor-exit v0

    throw p0
.end method
