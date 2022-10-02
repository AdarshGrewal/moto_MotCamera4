.class public Lcom/motorola/camera/ui/widgets/gl/textureatlas/TextureAtlasComponent$LoadAtlasImageRunnable;
.super Ljava/lang/Object;
.source "TextureAtlasComponent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/ui/widgets/gl/textureatlas/TextureAtlasComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LoadAtlasImageRunnable"
.end annotation


# instance fields
.field public mAtlasHolder:Lcom/motorola/camera/ui/widgets/gl/textureatlas/TextureAtlasComponent$AtlasHolder;

.field public mDpiToLoad:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

.field public final synthetic this$0:Lcom/motorola/camera/ui/widgets/gl/textureatlas/TextureAtlasComponent;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/textureatlas/TextureAtlasComponent;Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;Lcom/motorola/camera/ui/widgets/gl/textureatlas/TextureAtlasComponent$1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/TextureAtlasComponent$LoadAtlasImageRunnable;->this$0:Lcom/motorola/camera/ui/widgets/gl/textureatlas/TextureAtlasComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/TextureAtlasComponent$LoadAtlasImageRunnable;->mDpiToLoad:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    return-void
.end method


# virtual methods
.method public final getAtlasMap(Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;)Lcom/motorola/camera/ui/widgets/gl/textureatlas/TextureAtlasComponent$AtlasHolder;
    .locals 8

    .line 1
    sget-object p0, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->LDPI_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    if-ne p0, p1, :cond_0

    new-instance p0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/Atlasmdpi;

    invoke-direct {p0}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/Atlasmdpi;-><init>()V

    goto/16 :goto_7

    .line 2
    :cond_0
    sget-object p0, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->MDPI_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    if-ne p0, p1, :cond_1

    new-instance p0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/Atlasmdpi;

    invoke-direct {p0}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/Atlasmdpi;-><init>()V

    goto/16 :goto_7

    .line 3
    :cond_1
    sget-object p0, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->TVDPI_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    if-ne p0, p1, :cond_2

    new-instance p0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/Atlashdpi;

    invoke-direct {p0}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/Atlashdpi;-><init>()V

    goto/16 :goto_7

    .line 4
    :cond_2
    sget-object p0, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->HDPI_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    if-eq p0, p1, :cond_f

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->HDPI260_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    if-eq v0, p1, :cond_f

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->HDPI280_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    if-eq v0, p1, :cond_f

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->HDPI_SMALL_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    if-eq v0, p1, :cond_f

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->HDPI340_SMALL_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    if-ne v0, p1, :cond_3

    goto/16 :goto_5

    .line 5
    :cond_3
    sget-object p0, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->XHDPI_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    if-eq p0, p1, :cond_e

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->XHDPI_LARGER_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    if-ne v0, p1, :cond_4

    goto/16 :goto_4

    .line 6
    :cond_4
    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->HDPI300_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    if-eq v0, p1, :cond_d

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->HDPI300_LARGE_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    if-ne v0, p1, :cond_5

    goto/16 :goto_3

    .line 7
    :cond_5
    sget-object p0, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->HDPI400_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    if-eq p0, p1, :cond_c

    sget-object p0, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->HDPI340_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    if-eq p0, p1, :cond_c

    sget-object p0, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->HDPI360_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    if-eq p0, p1, :cond_c

    sget-object p0, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->HDPI440_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    if-eq p0, p1, :cond_c

    sget-object p0, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->HDPI420_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    if-eq p0, p1, :cond_c

    sget-object p0, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->HDPI360_LARGE_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    if-eq p0, p1, :cond_c

    sget-object p0, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->HDPI440_LARGEST_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    if-eq p0, p1, :cond_c

    sget-object p0, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->HDPI440_LARGE_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    if-eq p0, p1, :cond_c

    sget-object p0, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->HDPI440_LARGE2_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    if-ne p0, p1, :cond_6

    goto :goto_2

    .line 8
    :cond_6
    sget-object p0, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->XXHDPI_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    if-eq p0, p1, :cond_b

    sget-object p0, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->XXHDPI_LARGER_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    if-eq p0, p1, :cond_b

    sget-object p0, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->XXHDPI_LARGER2_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    if-ne p0, p1, :cond_7

    goto :goto_1

    .line 9
    :cond_7
    sget-object p0, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->HDPI560_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    if-eq p0, p1, :cond_a

    sget-object p0, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->HDPI560_LARGEST_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    if-ne p0, p1, :cond_8

    goto :goto_0

    .line 10
    :cond_8
    sget-object p0, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->XXXHDPI_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    if-ne p0, p1, :cond_9

    new-instance p0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/Atlasxxxhdpi;

    invoke-direct {p0}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/Atlasxxxhdpi;-><init>()V

    goto :goto_7

    .line 11
    :cond_9
    new-instance p0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/Atlasxhdpi;

    invoke-direct {p0}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/Atlasxhdpi;-><init>()V

    goto :goto_7

    .line 12
    :cond_a
    :goto_0
    new-instance p0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/Atlasxxxhdpi;

    invoke-direct {p0}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/Atlasxxxhdpi;-><init>()V

    .line 13
    sget-object p1, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->XXXHDPI_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    goto :goto_7

    .line 14
    :cond_b
    :goto_1
    new-instance p0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/Atlasxxhdpi;

    invoke-direct {p0}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/Atlasxxhdpi;-><init>()V

    goto :goto_7

    .line 15
    :cond_c
    :goto_2
    new-instance p0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/Atlasxxhdpi;

    invoke-direct {p0}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/Atlasxxhdpi;-><init>()V

    .line 16
    sget-object p1, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->XXHDPI_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    goto :goto_7

    .line 17
    :cond_d
    :goto_3
    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/textureatlas/Atlasxhdpi;

    invoke-direct {p1}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/Atlasxhdpi;-><init>()V

    goto :goto_6

    .line 18
    :cond_e
    :goto_4
    new-instance p0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/Atlasxhdpi;

    invoke-direct {p0}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/Atlasxhdpi;-><init>()V

    goto :goto_7

    .line 19
    :cond_f
    :goto_5
    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/textureatlas/Atlashdpi;

    invoke-direct {p1}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/Atlashdpi;-><init>()V

    :goto_6
    move-object v7, p1

    move-object p1, p0

    move-object p0, v7

    .line 20
    :goto_7
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/TextureAtlasComponent$AtlasHolder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/TextureAtlasComponent$AtlasHolder;-><init>(Lcom/motorola/camera/ui/widgets/gl/textureatlas/TextureAtlasComponent$1;)V

    .line 21
    iput-object p0, v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/TextureAtlasComponent$AtlasHolder;->mAtlasMap:Lcom/google/android/play/core/appupdate/zzr;

    .line 22
    iput-object p1, v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/TextureAtlasComponent$AtlasHolder;->mAtlasDpi:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    const-string p0, "Unable to load atlas for DPI "

    const-string v2, "TextureAtlasComponent"

    .line 23
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p1, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->mName:Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-string/jumbo v5, "textureatlas/drawable_atlas_texture_%s.webp"

    invoke-static {v3, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 24
    :try_start_0
    sget-object v4, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 25
    invoke-virtual {v4}, Landroid/app/Application;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    :try_start_1
    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_10

    .line 27
    sget-object v4, Lcom/motorola/camera/ui/widgets/gl/textureatlas/TextureAtlasComponent;->VERTICES_DATA:[F

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_10
    if-eqz v3, :cond_12

    .line 28
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_9

    :catchall_0
    move-exception v4

    if-eqz v3, :cond_11

    .line 29
    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_8

    :catchall_1
    move-exception v3

    :try_start_4
    invoke-virtual {v4, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_11
    :goto_8
    throw v4
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v3

    .line 30
    sget-object v4, Lcom/motorola/camera/ui/widgets/gl/textureatlas/TextureAtlasComponent;->VERTICES_DATA:[F

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 31
    :cond_12
    :goto_9
    iput-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/TextureAtlasComponent$AtlasHolder;->mAtlas:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public run()V
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/TextureAtlasComponent$LoadAtlasImageRunnable;->mDpiToLoad:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/TextureAtlasComponent$LoadAtlasImageRunnable;->getAtlasMap(Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;)Lcom/motorola/camera/ui/widgets/gl/textureatlas/TextureAtlasComponent$AtlasHolder;

    move-result-object v0

    .line 3
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/TextureAtlasComponent$AtlasHolder;->mAtlas:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    .line 4
    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->XHDPI_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/TextureAtlasComponent$LoadAtlasImageRunnable;->mDpiToLoad:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    .line 5
    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/TextureAtlasComponent$LoadAtlasImageRunnable;->getAtlasMap(Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;)Lcom/motorola/camera/ui/widgets/gl/textureatlas/TextureAtlasComponent$AtlasHolder;

    move-result-object v0

    .line 6
    :cond_0
    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/TextureAtlasComponent$LoadAtlasImageRunnable;->mAtlasHolder:Lcom/motorola/camera/ui/widgets/gl/textureatlas/TextureAtlasComponent$AtlasHolder;

    .line 7
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/TextureAtlasComponent$LoadAtlasImageRunnable;->this$0:Lcom/motorola/camera/ui/widgets/gl/textureatlas/TextureAtlasComponent;

    .line 8
    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 9
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/TextureAtlasComponent$LoadAtlasImageRunnable;->this$0:Lcom/motorola/camera/ui/widgets/gl/textureatlas/TextureAtlasComponent;

    .line 10
    iget v2, v1, Lcom/motorola/camera/ui/widgets/gl/textureatlas/TextureAtlasComponent;->mLoadState:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 11
    :cond_1
    iget-object v2, v1, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mHandler:Landroid/os/Handler;

    .line 12
    iget-object v1, v1, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;

    .line 13
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda2;

    invoke-direct {v3, v1}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda2;-><init>(Lcom/motorola/camera/ui/widgets/gl/iTextureManager;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 14
    :goto_0
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/TextureAtlasComponent$LoadAtlasImageRunnable;->this$0:Lcom/motorola/camera/ui/widgets/gl/textureatlas/TextureAtlasComponent;

    .line 15
    iget-object v1, v1, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    .line 16
    new-instance v2, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda8;

    invoke-direct {v2, p0, v0}, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda8;-><init>(Lcom/motorola/camera/ui/widgets/gl/textureatlas/TextureAtlasComponent$LoadAtlasImageRunnable;Lcom/motorola/camera/ui/widgets/gl/textureatlas/TextureAtlasComponent$AtlasHolder;)V

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    .line 17
    iget-object p0, v1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mHandler:Landroid/os/Handler;

    new-instance v0, Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda0;

    invoke-direct {v0, v1, v2}, Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 18
    :cond_2
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/TextureAtlasComponent$LoadAtlasImageRunnable;->this$0:Lcom/motorola/camera/ui/widgets/gl/textureatlas/TextureAtlasComponent;

    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/TextureAtlasComponent;->mAtlasRunnable:Lcom/motorola/camera/ui/widgets/gl/textureatlas/TextureAtlasComponent$LoadAtlasImageRunnable;

    :goto_1
    return-void
.end method
