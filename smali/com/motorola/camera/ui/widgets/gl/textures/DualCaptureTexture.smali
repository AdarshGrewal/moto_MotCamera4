.class public abstract Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture;
.super Lcom/motorola/camera/ui/widgets/gl/textures/Texture;
.source "DualCaptureTexture.java"


# instance fields
.field public final mFboProjection:[F

.field public mFboSize:Lcom/motorola/camera/PreviewSize;

.field public mFboTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

.field public mGlComponent:Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

.field public final mIdentityMatrix:[F

.field public mPIPPosition:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

.field public volatile mPreviewType:I

.field public mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V

    const/16 p1, 0x10

    new-array v0, p1, [F

    .line 2
    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture;->mIdentityMatrix:[F

    new-array p1, p1, [F

    .line 3
    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture;->mFboProjection:[F

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;Lcom/motorola/camera/ui/widgets/gl/iGlComponent;Lcom/motorola/camera/PreviewSize;)V
    .locals 9

    .line 4
    invoke-direct {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V

    const/16 p1, 0x10

    new-array v0, p1, [F

    .line 5
    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture;->mIdentityMatrix:[F

    new-array v1, p1, [F

    .line 6
    iput-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture;->mFboProjection:[F

    .line 7
    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;

    .line 8
    iput-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture;->mGlComponent:Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    .line 9
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->DUAL_CAPTURE_PREVIEW_TYPE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p1

    .line 10
    iget-object p2, p1, Lcom/motorola/camera/settings/Setting;->mPersistBehavior:Lcom/motorola/camera/settings/PersistBehavior;

    .line 11
    invoke-virtual {p2, p1}, Lcom/motorola/camera/settings/PersistBehavior;->performRead(Lcom/motorola/camera/settings/Setting;)V

    .line 12
    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 13
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture;->mPreviewType:I

    .line 14
    iput-object p4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture;->mFboSize:Lcom/motorola/camera/PreviewSize;

    .line 15
    invoke-virtual {p4}, Lcom/motorola/camera/PreviewSize;->getMin()I

    move-result p1

    .line 16
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture;->mFboSize:Lcom/motorola/camera/PreviewSize;

    invoke-virtual {p2}, Lcom/motorola/camera/PreviewSize;->getMax()I

    move-result p2

    .line 17
    new-instance p3, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    iget-object p4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    invoke-direct {p3, p4}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V

    iput-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture;->mFboTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    .line 18
    invoke-virtual {p3, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->setSize(II)V

    .line 19
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture;->mFboTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    const/high16 p3, 0x3f800000    # 1.0f

    invoke-virtual {p0, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    const/4 p0, 0x0

    .line 20
    invoke-static {v0, p0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 21
    invoke-static {v1, p0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    neg-int p0, p1

    int-to-float p0, p0

    const/high16 p3, 0x40000000    # 2.0f

    div-float v3, p0, p3

    int-to-float p0, p1

    div-float v4, p0, p3

    neg-int p0, p2

    int-to-float p0, p0

    div-float v5, p0, p3

    int-to-float p0, p2

    div-float v6, p0, p3

    const/4 v2, 0x0

    const/high16 v7, -0x40800000    # -1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    .line 22
    invoke-static/range {v1 .. v8}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    return-void
.end method


# virtual methods
.method public abstract onDrawFbo()V
.end method

.method public declared-synchronized onDrawFbo([F[F)V
    .locals 0

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture;->onDrawFbo()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setVisibility(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture;->mFboTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    return-void
.end method
