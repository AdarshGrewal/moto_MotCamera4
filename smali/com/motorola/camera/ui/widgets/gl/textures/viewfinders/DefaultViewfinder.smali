.class public Lcom/motorola/camera/ui/widgets/gl/textures/viewfinders/DefaultViewfinder;
.super Lcom/motorola/camera/ui/widgets/gl/textures/viewfinders/ViewfinderTexture;
.source "DefaultViewfinder.java"


# instance fields
.field public mUpdateVbo:Z

.field public mVbo:I

.field public mVerticesData:[F


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/viewfinders/ViewfinderTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/viewfinders/DefaultViewfinder;->mVbo:I

    return-void
.end method


# virtual methods
.method public loadTexture()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/viewfinders/ViewfinderTexture;->mIsLoaded:Z

    .line 2
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/viewfinders/DefaultViewfinder;->updateVbo()V

    return-void
.end method

.method public onDraw([F[F)V
    .locals 12

    .line 1
    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/viewfinders/DefaultViewfinder;->mUpdateVbo:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/viewfinders/DefaultViewfinder;->updateVbo()V

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getShader$enumunboxing$(I)Lcom/motorola/camera/ui/widgets/gl/Shader;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/Shader;->use()V

    .line 4
    sget-object v2, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;->POSITION:Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;

    .line 5
    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/Shader;->getProgramAttribute(Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;)Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;

    move-result-object v3

    const/4 v4, 0x3

    const/16 v2, 0x1406

    const/4 v10, 0x0

    const/16 v11, 0x14

    const/4 v8, 0x0

    .line 6
    iget v9, p0, Lcom/motorola/camera/ui/widgets/gl/textures/viewfinders/DefaultViewfinder;->mVbo:I

    const/16 v5, 0x1406

    const/4 v6, 0x0

    const/16 v7, 0x14

    invoke-virtual/range {v3 .. v9}, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->set(IIZIII)V

    .line 7
    sget-object v3, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;->TEXTURE_COORD:Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;

    .line 8
    invoke-virtual {v0, v3}, Lcom/motorola/camera/ui/widgets/gl/Shader;->getProgramAttribute(Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;)Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;

    move-result-object v5

    const/4 v6, 0x2

    const/16 v3, 0xc

    .line 9
    iget v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/viewfinders/DefaultViewfinder;->mVbo:I

    move v7, v2

    move v8, v10

    move v9, v11

    move v10, v3

    move v11, v4

    invoke-virtual/range {v5 .. v11}, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->set(IIZIII)V

    .line 10
    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/Shader;->pushAttributes()V

    .line 11
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMMatrix:[F

    invoke-static {v2, v3, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->multiplyMatrix([F[F[F[F)V

    .line 12
    sget-object p1, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->MVP_MATRIX:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    invoke-virtual {v0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/Shader;->setUniformValue(Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;[F)V

    .line 13
    sget-object p1, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->ST_MATRIX:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/viewfinders/ViewfinderTexture;->mSTMatrix:[F

    invoke-virtual {v0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/Shader;->setUniformValue(Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;[F)V

    .line 14
    sget-object p1, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->ALPHA:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mAlpha:F

    invoke-virtual {v0, p1, p0}, Lcom/motorola/camera/ui/widgets/gl/Shader;->setUniformValue(Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;F)V

    .line 15
    sget-object p0, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->TEXTURE:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    invoke-virtual {v0, p0, v1}, Lcom/motorola/camera/ui/widgets/gl/Shader;->setUniformValue(Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;I)V

    const/4 p0, 0x5

    const/4 p1, 0x4

    const/4 p2, 0x0

    .line 16
    invoke-static {p0, p2, p1}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->drawArrays(III)V

    const p0, 0x8892

    .line 17
    invoke-static {p0, p2}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->bindBuffer(II)V

    return-void
.end method

.method public setSizes(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Lcom/motorola/camera/PreviewSize;->getTrueAspectRatio()F

    move-result v0

    .line 2
    invoke-virtual {p2}, Lcom/motorola/camera/PreviewSize;->getTrueAspectRatio()F

    move-result v1

    .line 3
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSensorOrientationSameAsScreen()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    .line 4
    invoke-static {}, Lcom/motorola/camera/Util;->isDeviceOnLandscapeOnDesktopMode()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5
    new-instance v0, Lcom/motorola/camera/PreviewSize;

    iget v3, p1, Lcom/motorola/camera/PreviewSize;->height:I

    iget p1, p1, Lcom/motorola/camera/PreviewSize;->width:I

    invoke-direct {v0, v3, p1}, Lcom/motorola/camera/PreviewSize;-><init>(II)V

    .line 6
    invoke-virtual {v0}, Lcom/motorola/camera/PreviewSize;->getTrueAspectRatio()F

    move-result p1

    move-object v7, v0

    move v0, p1

    move-object p1, v7

    :cond_0
    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v2, :cond_1

    div-float v0, v3, v0

    :cond_1
    cmpg-float v2, v0, v1

    const/4 v4, 0x0

    if-gez v2, :cond_5

    .line 7
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentVideoMode()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 8
    sget-object v2, Lcom/motorola/camera/VideoHelper;->ANAMORPHIC_VIDEO_SIZES:Ljava/util/List;

    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 9
    invoke-static {v5}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v5

    .line 10
    iget-object v5, v5, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 11
    check-cast v5, Lcom/motorola/camera/VideoFormat;

    iget-object v5, v5, Lcom/motorola/camera/VideoFormat;->mVideoSize:Landroid/util/Size;

    .line 12
    invoke-interface {v2, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0

    :cond_2
    move v2, v4

    :goto_0
    if-nez v2, :cond_5

    div-float v2, v0, v1

    sub-float v2, v3, v2

    .line 13
    sget-object v5, Lcom/motorola/camera/ui/widgets/gl/VboManager$VboType;->FBO_VERTICES_NORMALS:Lcom/motorola/camera/ui/widgets/gl/VboManager$VboType;

    invoke-virtual {v5}, Lcom/motorola/camera/ui/widgets/gl/VboManager$VboType;->getData()[F

    move-result-object v5

    .line 14
    iget-object v6, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v6, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v6}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result v6

    if-eqz v6, :cond_3

    sget-object v6, Lcom/motorola/camera/PreviewSize$AspectRatio;->SQUARE:Lcom/motorola/camera/PreviewSize$AspectRatio;

    invoke-static {p2, v6}, Lcom/motorola/camera/PreviewSize;->isTrueAspectRatio(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize$AspectRatio;)Z

    move-result p2

    if-nez p2, :cond_4

    :cond_3
    const/4 p2, 0x4

    .line 15
    aput v2, v5, p2

    const/16 p2, 0x9

    .line 16
    aput v2, v5, p2

    .line 17
    :cond_4
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast p2, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p2}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result p2

    if-nez p2, :cond_5

    .line 18
    invoke-virtual {p0, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/viewfinders/DefaultViewfinder;->setVerticesData([F)V

    :cond_5
    const p2, 0x3cf5c28f    # 0.03f

    sub-float v2, v0, p2

    cmpg-float v2, v1, v2

    if-gez v2, :cond_6

    div-float v2, v1, v0

    goto :goto_1

    :cond_6
    move v2, v3

    :goto_1
    sub-float p2, v1, p2

    cmpg-float p2, v0, p2

    if-gez p2, :cond_7

    div-float/2addr v0, v1

    goto :goto_2

    :cond_7
    move v0, v3

    .line 19
    :goto_2
    sget-object p2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 20
    iget-boolean p2, p2, Lcom/motorola/camera/CameraApp;->mDesktopMode:Z

    const/high16 v1, 0x40000000    # 2.0f

    if-eqz p2, :cond_8

    .line 21
    sget-object p2, Lcom/motorola/camera/ui/widgets/gl/VboManager$VboType;->FBO_VERTICES_NORMALS:Lcom/motorola/camera/ui/widgets/gl/VboManager$VboType;

    invoke-virtual {p2}, Lcom/motorola/camera/ui/widgets/gl/VboManager$VboType;->getData()[F

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/viewfinders/DefaultViewfinder;->setVerticesData([F)V

    .line 22
    new-instance p2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget v4, p1, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v4, v4

    div-float/2addr v4, v1

    mul-float/2addr v4, v0

    iget p1, p1, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float p1, p1

    div-float/2addr p1, v1

    mul-float/2addr p1, v2

    invoke-direct {p2, v4, p1, v3}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/viewfinders/ViewfinderTexture;->mPreviewScale:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    .line 23
    sget p1, Lcom/motorola/camera/shared/OrientationEvent;->mCurrentOrientation:I

    rsub-int p1, p1, 0x168

    .line 24
    rem-int/lit16 p1, p1, 0x168

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/viewfinders/ViewfinderTexture;->mPreviewRotation:I

    goto :goto_3

    .line 25
    :cond_8
    new-instance p2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget v5, p1, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v5, v5

    div-float/2addr v5, v1

    mul-float/2addr v5, v0

    iget p1, p1, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float p1, p1

    div-float/2addr p1, v1

    mul-float/2addr p1, v2

    invoke-direct {p2, v5, p1, v3}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/viewfinders/ViewfinderTexture;->mPreviewScale:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    .line 26
    iput v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/viewfinders/ViewfinderTexture;->mPreviewRotation:I

    :goto_3
    return-void
.end method

.method public setVerticesData([F)V
    .locals 3

    .line 1
    array-length v0, p1

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/viewfinders/DefaultViewfinder;->mVerticesData:[F

    .line 2
    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/viewfinders/DefaultViewfinder;->mUpdateVbo:Z

    return-void
.end method

.method public unloadTexture()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/viewfinders/ViewfinderTexture;->mIsLoaded:Z

    .line 2
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getVboManager()Lcom/motorola/camera/ui/widgets/gl/VboManager;

    move-result-object v1

    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/viewfinders/DefaultViewfinder;->mVbo:I

    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/widgets/gl/VboManager;->deleteVbo(I)V

    .line 3
    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/viewfinders/DefaultViewfinder;->mVbo:I

    return-void
.end method

.method public updateVbo()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getVboManager()Lcom/motorola/camera/ui/widgets/gl/VboManager;

    move-result-object v0

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/viewfinders/DefaultViewfinder;->mVbo:I

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/VboManager;->deleteVbo(I)V

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/viewfinders/DefaultViewfinder;->mVerticesData:[F

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getVboManager()Lcom/motorola/camera/ui/widgets/gl/VboManager;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/viewfinders/DefaultViewfinder;->mVerticesData:[F

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/VboManager;->getCustomVbo([F)I

    move-result v0

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/viewfinders/DefaultViewfinder;->mVbo:I

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getVboManager()Lcom/motorola/camera/ui/widgets/gl/VboManager;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/VboManager$VboType;->FBO_VERTICES_NORMALS:Lcom/motorola/camera/ui/widgets/gl/VboManager$VboType;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/VboManager;->getVboId(Lcom/motorola/camera/ui/widgets/gl/VboManager$VboType;)I

    move-result v0

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/viewfinders/DefaultViewfinder;->mVbo:I

    :goto_0
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/viewfinders/DefaultViewfinder;->mUpdateVbo:Z

    return-void
.end method
