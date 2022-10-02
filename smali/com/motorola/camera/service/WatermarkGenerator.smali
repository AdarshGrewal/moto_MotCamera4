.class public Lcom/motorola/camera/service/WatermarkGenerator;
.super Ljava/lang/Object;
.source "WatermarkGenerator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/service/WatermarkGenerator$LazyLoader;
    }
.end annotation


# instance fields
.field public mAreaHeight:I

.field public mAreaWidth:I

.field public mByTxtSize:I

.field public mIsRtl:Z

.field public mIsSignPresent:Z

.field public mIsSignatureOn:Z

.field public mIsTimestampOn:Z

.field public mLeftPreviewTemplate:Landroid/graphics/Bitmap;

.field public mLeftSignTemplate:Landroid/graphics/Bitmap;

.field public final mLineColor:I

.field public mLineHeight:I

.field public mLineTop:I

.field public mLineWidth:I

.field public mLogoBitmap:Landroid/graphics/Bitmap;

.field public mLogoHeight:I

.field public mLogoMarginH:I

.field public mLogoMarginV:I

.field public mLogoWidth:I

.field public mPreviewHeight:I

.field public mPreviewWidth:I

.field public final mResource:Landroid/content/res/Resources;

.field public mRightPreviewTemplate:Landroid/graphics/Bitmap;

.field public final mShotOnText:Ljava/lang/String;

.field public mShotOnTxtSize:I

.field public mSignText:Ljava/lang/String;

.field public mSignXOffset:I

.field public mTimestampTemplate:Landroid/graphics/Bitmap;

.field public mTsTxtSize:I

.field public mTsTxtXStart:I

.field public mTsTxtYStart:I

.field public mTsXMargin:I

.field public mTsYMargin:I


# direct methods
.method public constructor <init>(Lcom/motorola/camera/service/WatermarkGenerator$1;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 3
    invoke-virtual {p1}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/service/WatermarkGenerator;->mResource:Landroid/content/res/Resources;

    const v0, 0x7f060396

    const/4 v1, 0x0

    .line 4
    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    iput v0, p0, Lcom/motorola/camera/service/WatermarkGenerator;->mLineColor:I

    .line 5
    invoke-static {}, Lcom/motorola/camera/Util;->isBrandLenovo()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/motorola/camera/Util;->getProductDisplay()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const v0, 0x7f1104f7

    .line 6
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 7
    invoke-static {}, Lcom/motorola/camera/Util;->getProductDisplay()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/motorola/camera/service/WatermarkEditorService;->convertProductName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 8
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/motorola/camera/service/WatermarkGenerator;->mShotOnText:Ljava/lang/String;

    return-void
.end method

.method public static isBitmapValid(Landroid/graphics/Bitmap;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static releaseBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    return-void
.end method

.method public static scaleBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-static {p0, p1, p2, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eq p0, p1, :cond_0

    .line 2
    invoke-static {p0}, Lcom/motorola/camera/service/WatermarkGenerator;->releaseBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    return-object p1
.end method


# virtual methods
.method public createPreviewBitmap(ZZ)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_6

    .line 1
    iget-object p1, p0, Lcom/motorola/camera/service/WatermarkGenerator;->mLeftPreviewTemplate:Landroid/graphics/Bitmap;

    invoke-static {p1}, Lcom/motorola/camera/service/WatermarkGenerator;->isBitmapValid(Landroid/graphics/Bitmap;)Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_3

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/motorola/camera/service/WatermarkGenerator;->mLeftPreviewTemplate:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v4

    invoke-virtual {p1, v4, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 3
    invoke-static {p1}, Lcom/motorola/camera/service/WatermarkGenerator;->isBitmapValid(Landroid/graphics/Bitmap;)Z

    move-result v4

    if-nez v4, :cond_1

    goto/16 :goto_3

    .line 4
    :cond_1
    iget-boolean v4, p0, Lcom/motorola/camera/service/WatermarkGenerator;->mIsTimestampOn:Z

    if-eqz v4, :cond_4

    .line 5
    iget-object v4, p0, Lcom/motorola/camera/service/WatermarkGenerator;->mTimestampTemplate:Landroid/graphics/Bitmap;

    invoke-static {v4}, Lcom/motorola/camera/service/WatermarkGenerator;->isBitmapValid(Landroid/graphics/Bitmap;)Z

    move-result v4

    if-nez v4, :cond_2

    move-object v6, v3

    goto :goto_0

    :cond_2
    const-wide/16 v4, 0x0

    .line 6
    invoke-static {v4, v5}, Lcom/motorola/camera/service/WatermarkEditorService;->getTimestampString(J)Ljava/lang/String;

    move-result-object v4

    .line 7
    invoke-static {v2}, Lcom/motorola/camera/service/WatermarkGenerator$$ExternalSyntheticOutline0;->m(Z)Landroid/graphics/Paint;

    move-result-object v5

    .line 8
    iget v6, p0, Lcom/motorola/camera/service/WatermarkGenerator;->mTsTxtSize:I

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 9
    iget v6, p0, Lcom/motorola/camera/service/WatermarkGenerator;->mLineColor:I

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 10
    iget-object v6, p0, Lcom/motorola/camera/service/WatermarkGenerator;->mTimestampTemplate:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v7

    invoke-virtual {v6, v7, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 11
    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 12
    iget v8, p0, Lcom/motorola/camera/service/WatermarkGenerator;->mTsTxtXStart:I

    int-to-float v8, v8

    iget v9, p0, Lcom/motorola/camera/service/WatermarkGenerator;->mTsTxtYStart:I

    int-to-float v9, v9

    invoke-virtual {v7, v4, v8, v9, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :goto_0
    if-eqz v6, :cond_4

    .line 13
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v5

    float-to-int v5, v7

    .line 14
    invoke-static {v6, v4, v5}, Lcom/motorola/camera/service/WatermarkGenerator;->scaleBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 15
    invoke-static {v2}, Lcom/motorola/camera/service/WatermarkGenerator$$ExternalSyntheticOutline0;->m(Z)Landroid/graphics/Paint;

    move-result-object v5

    .line 16
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 17
    iget-boolean v7, p0, Lcom/motorola/camera/service/WatermarkGenerator;->mIsRtl:Z

    if-nez v7, :cond_3

    .line 18
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    sub-int/2addr v7, v8

    int-to-float v7, v7

    .line 19
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    sub-int/2addr v8, v9

    int-to-float v8, v8

    .line 20
    invoke-virtual {v6, v4, v7, v8, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 21
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    sub-int/2addr v7, v8

    int-to-float v7, v7

    .line 22
    invoke-virtual {v6, v4, v0, v7, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 23
    :goto_1
    invoke-static {v4}, Lcom/motorola/camera/service/WatermarkGenerator;->releaseBitmap(Landroid/graphics/Bitmap;)V

    .line 24
    :cond_4
    iget-boolean v4, p0, Lcom/motorola/camera/service/WatermarkGenerator;->mIsSignatureOn:Z

    if-eqz v4, :cond_7

    .line 25
    iget-object v4, p0, Lcom/motorola/camera/service/WatermarkGenerator;->mLeftSignTemplate:Landroid/graphics/Bitmap;

    invoke-static {v4}, Lcom/motorola/camera/service/WatermarkGenerator;->isBitmapValid(Landroid/graphics/Bitmap;)Z

    move-result v4

    if-nez v4, :cond_5

    move-object v4, v3

    goto :goto_2

    .line 26
    :cond_5
    new-instance v4, Landroid/text/TextPaint;

    invoke-direct {v4}, Landroid/text/TextPaint;-><init>()V

    .line 27
    invoke-virtual {v4, v2}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 28
    iget-object v4, p0, Lcom/motorola/camera/service/WatermarkGenerator;->mLeftSignTemplate:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 29
    invoke-virtual {p0, v4, v2}, Lcom/motorola/camera/service/WatermarkGenerator;->drawSignature(Landroid/graphics/Bitmap;Z)V

    :goto_2
    if-eqz v4, :cond_7

    .line 30
    iget v5, p0, Lcom/motorola/camera/service/WatermarkGenerator;->mPreviewHeight:I

    int-to-float v5, v5

    const v6, 0x3e4ccccd    # 0.2f

    mul-float/2addr v5, v6

    float-to-int v5, v5

    .line 31
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    mul-int/2addr v6, v5

    int-to-float v6, v6

    mul-float/2addr v6, v1

    .line 32
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    float-to-int v6, v6

    .line 33
    invoke-static {v4, v6, v5}, Lcom/motorola/camera/service/WatermarkGenerator;->scaleBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 34
    invoke-virtual {p0, p1, v4}, Lcom/motorola/camera/service/WatermarkGenerator;->drawSignToPreview(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 35
    invoke-static {v4}, Lcom/motorola/camera/service/WatermarkGenerator;->releaseBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_4

    :cond_6
    :goto_3
    move-object p1, v3

    :cond_7
    :goto_4
    if-eqz p2, :cond_d

    .line 36
    iget-object p2, p0, Lcom/motorola/camera/service/WatermarkGenerator;->mRightPreviewTemplate:Landroid/graphics/Bitmap;

    invoke-static {p2}, Lcom/motorola/camera/service/WatermarkGenerator;->isBitmapValid(Landroid/graphics/Bitmap;)Z

    move-result p2

    if-nez p2, :cond_8

    goto/16 :goto_6

    .line 37
    :cond_8
    iget-object p2, p0, Lcom/motorola/camera/service/WatermarkGenerator;->mRightPreviewTemplate:Landroid/graphics/Bitmap;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v4

    invoke-virtual {p2, v4, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 38
    invoke-static {p2}, Lcom/motorola/camera/service/WatermarkGenerator;->isBitmapValid(Landroid/graphics/Bitmap;)Z

    move-result v4

    if-nez v4, :cond_9

    goto :goto_6

    .line 39
    :cond_9
    iget-boolean v3, p0, Lcom/motorola/camera/service/WatermarkGenerator;->mIsSignatureOn:Z

    if-eqz v3, :cond_c

    .line 40
    invoke-static {v2}, Lcom/motorola/camera/service/WatermarkGenerator$$ExternalSyntheticOutline0;->m(Z)Landroid/graphics/Paint;

    move-result-object v2

    .line 41
    iget v3, p0, Lcom/motorola/camera/service/WatermarkGenerator;->mLineWidth:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 42
    iget v3, p0, Lcom/motorola/camera/service/WatermarkGenerator;->mShotOnTxtSize:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 43
    iget-object v3, p0, Lcom/motorola/camera/service/WatermarkGenerator;->mShotOnText:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    .line 44
    iget-boolean v4, p0, Lcom/motorola/camera/service/WatermarkGenerator;->mIsSignPresent:Z

    if-eqz v4, :cond_a

    .line 45
    iget v0, p0, Lcom/motorola/camera/service/WatermarkGenerator;->mByTxtSize:I

    int-to-float v0, v0

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 46
    iget-object v0, p0, Lcom/motorola/camera/service/WatermarkGenerator;->mSignText:Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    .line 47
    :cond_a
    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-int v0, v0

    .line 48
    iget v2, p0, Lcom/motorola/camera/service/WatermarkGenerator;->mSignXOffset:I

    add-int/2addr v2, v0

    iget v0, p0, Lcom/motorola/camera/service/WatermarkGenerator;->mLogoMarginH:I

    add-int/2addr v2, v0

    invoke-static {v2}, Lcom/motorola/camera/Util;->roundToFour(I)I

    move-result v0

    .line 49
    iget v2, p0, Lcom/motorola/camera/service/WatermarkGenerator;->mAreaHeight:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 50
    invoke-virtual {p0, v0}, Lcom/motorola/camera/service/WatermarkGenerator;->preDraw(Landroid/graphics/Bitmap;)V

    const/4 v2, 0x0

    .line 51
    invoke-virtual {p0, v0, v2}, Lcom/motorola/camera/service/WatermarkGenerator;->drawSignature(Landroid/graphics/Bitmap;Z)V

    .line 52
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 53
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 54
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    if-ge v4, v2, :cond_b

    .line 55
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v3, v3

    mul-float/2addr v3, v1

    int-to-float v1, v4

    mul-float/2addr v3, v1

    int-to-float v1, v2

    div-float/2addr v3, v1

    float-to-int v3, v3

    goto :goto_5

    :cond_b
    mul-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v2, v1

    int-to-float v1, v3

    div-float/2addr v2, v1

    float-to-int v4, v2

    .line 56
    :goto_5
    invoke-static {v0, v4, v3}, Lcom/motorola/camera/service/WatermarkGenerator;->scaleBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 57
    invoke-virtual {p0, p2, v0}, Lcom/motorola/camera/service/WatermarkGenerator;->drawSignToPreview(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 58
    invoke-static {v0}, Lcom/motorola/camera/service/WatermarkGenerator;->releaseBitmap(Landroid/graphics/Bitmap;)V

    :cond_c
    move-object v3, p2

    .line 59
    :cond_d
    :goto_6
    new-instance p0, Ljava/util/ArrayList;

    const/4 p2, 0x2

    invoke-direct {p0, p2}, Ljava/util/ArrayList;-><init>(I)V

    if-eqz p1, :cond_e

    .line 60
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e
    if-eqz v3, :cond_f

    .line 61
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f
    return-object p0
.end method

.method public final drawSignToPreview(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 3

    const/4 v0, 0x1

    .line 1
    invoke-static {v0}, Lcom/motorola/camera/service/WatermarkGenerator$$ExternalSyntheticOutline0;->m(Z)Landroid/graphics/Paint;

    move-result-object v0

    .line 2
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 3
    iget-boolean p0, p0, Lcom/motorola/camera/service/WatermarkGenerator;->mIsRtl:Z

    if-nez p0, :cond_0

    const/4 p0, 0x0

    .line 4
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sub-int/2addr p1, v2

    int-to-float p1, p1

    .line 5
    invoke-virtual {v1, p2, p0, p1, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sub-int/2addr p0, v2

    int-to-float p0, p0

    .line 7
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sub-int/2addr p1, v2

    int-to-float p1, p1

    .line 8
    invoke-virtual {v1, p2, p0, p1, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :goto_0
    return-void
.end method

.method public final drawSignature(Landroid/graphics/Bitmap;Z)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/service/WatermarkGenerator;->mLeftSignTemplate:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/motorola/camera/service/WatermarkGenerator;->isBitmapValid(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/motorola/camera/service/WatermarkGenerator;->mTimestampTemplate:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/motorola/camera/service/WatermarkGenerator;->isBitmapValid(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 2
    :cond_0
    new-instance v7, Landroid/text/TextPaint;

    invoke-direct {v7}, Landroid/text/TextPaint;-><init>()V

    const/4 v0, 0x1

    .line 3
    invoke-virtual {v7, v0}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 4
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 5
    iget-boolean p1, p0, Lcom/motorola/camera/service/WatermarkGenerator;->mIsSignPresent:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 6
    iget-object p1, p0, Lcom/motorola/camera/service/WatermarkGenerator;->mResource:Landroid/content/res/Resources;

    const v2, 0x7f0703c5

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    .line 7
    iget-object v2, p0, Lcom/motorola/camera/service/WatermarkGenerator;->mResource:Landroid/content/res/Resources;

    const v3, 0x7f0703b7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    add-int/2addr v2, p1

    goto :goto_0

    .line 8
    :cond_1
    iget-object p1, p0, Lcom/motorola/camera/service/WatermarkGenerator;->mResource:Landroid/content/res/Resources;

    const v2, 0x7f0703c6

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    move v2, v0

    .line 9
    :goto_0
    iget v3, p0, Lcom/motorola/camera/service/WatermarkGenerator;->mShotOnTxtSize:I

    int-to-float v3, v3

    invoke-virtual {v7, v3}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 10
    iget v3, p0, Lcom/motorola/camera/service/WatermarkGenerator;->mLineColor:I

    invoke-virtual {v7, v3}, Landroid/text/TextPaint;->setColor(I)V

    .line 11
    iget v3, p0, Lcom/motorola/camera/service/WatermarkGenerator;->mSignXOffset:I

    .line 12
    iget-boolean v4, p0, Lcom/motorola/camera/service/WatermarkGenerator;->mIsRtl:Z

    if-eqz v4, :cond_2

    .line 13
    iget-object v3, p0, Lcom/motorola/camera/service/WatermarkGenerator;->mShotOnText:Ljava/lang/String;

    invoke-virtual {v7, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v3

    float-to-int v3, v3

    .line 14
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v4

    sub-int/2addr v4, v3

    iget v3, p0, Lcom/motorola/camera/service/WatermarkGenerator;->mSignXOffset:I

    sub-int v3, v4, v3

    .line 15
    :cond_2
    iget-object v4, p0, Lcom/motorola/camera/service/WatermarkGenerator;->mShotOnText:Ljava/lang/String;

    int-to-float v3, v3

    int-to-float p1, p1

    invoke-virtual {v1, v4, v3, p1, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 16
    iget-boolean p1, p0, Lcom/motorola/camera/service/WatermarkGenerator;->mIsSignPresent:Z

    if-eqz p1, :cond_5

    .line 17
    iget p1, p0, Lcom/motorola/camera/service/WatermarkGenerator;->mByTxtSize:I

    int-to-float p1, p1

    invoke-virtual {v7, p1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 18
    iget p1, p0, Lcom/motorola/camera/service/WatermarkGenerator;->mLineColor:I

    invoke-virtual {v7, p1}, Landroid/text/TextPaint;->setColor(I)V

    .line 19
    iget-object p1, p0, Lcom/motorola/camera/service/WatermarkGenerator;->mSignText:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p2, :cond_3

    .line 20
    iget p1, p0, Lcom/motorola/camera/service/WatermarkGenerator;->mPreviewHeight:I

    int-to-float p1, p1

    const p2, 0x3e4ccccd    # 0.2f

    mul-float/2addr p1, p2

    float-to-int p1, p1

    .line 21
    iget-object p2, p0, Lcom/motorola/camera/service/WatermarkGenerator;->mLeftSignTemplate:Landroid/graphics/Bitmap;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    mul-int/2addr p2, p1

    int-to-float p1, p2

    const/high16 p2, 0x3f800000    # 1.0f

    mul-float/2addr p1, p2

    iget-object v3, p0, Lcom/motorola/camera/service/WatermarkGenerator;->mLeftSignTemplate:Landroid/graphics/Bitmap;

    .line 22
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr p1, v3

    float-to-int p1, p1

    .line 23
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/motorola/camera/service/WatermarkGenerator;->mSignXOffset:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget-object v4, p0, Lcom/motorola/camera/service/WatermarkGenerator;->mTimestampTemplate:Landroid/graphics/Bitmap;

    .line 24
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float/2addr v4, v5

    int-to-float p1, p1

    mul-float/2addr p1, p2

    iget-object p2, p0, Lcom/motorola/camera/service/WatermarkGenerator;->mLeftSignTemplate:Landroid/graphics/Bitmap;

    .line 25
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p1, p2

    div-float/2addr v4, p1

    sub-float/2addr v3, v4

    .line 26
    iget-object p1, p0, Lcom/motorola/camera/service/WatermarkGenerator;->mSignText:Ljava/lang/String;

    sget-object p2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {p1, v7, v3, p2}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 27
    :cond_3
    iget p2, p0, Lcom/motorola/camera/service/WatermarkGenerator;->mSignXOffset:I

    .line 28
    iget-boolean v3, p0, Lcom/motorola/camera/service/WatermarkGenerator;->mIsRtl:Z

    if-eqz v3, :cond_4

    .line 29
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p2

    .line 30
    invoke-virtual {v7, p1, v0, p2}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result p2

    float-to-int p2, p2

    .line 31
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    sub-int/2addr v0, p2

    iget p0, p0, Lcom/motorola/camera/service/WatermarkGenerator;->mSignXOffset:I

    sub-int p2, v0, p0

    :cond_4
    const/4 v3, 0x0

    .line 32
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    int-to-float v5, p2

    int-to-float v6, v2

    move-object v2, p1

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public final preDraw(Landroid/graphics/Bitmap;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/service/WatermarkGenerator;->mLogoBitmap:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/motorola/camera/service/WatermarkGenerator;->isBitmapValid(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    invoke-static {v0}, Lcom/motorola/camera/service/WatermarkGenerator$$ExternalSyntheticOutline0;->m(Z)Landroid/graphics/Paint;

    move-result-object v6

    .line 3
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 4
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    const/4 v2, 0x0

    .line 5
    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 6
    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 7
    iget-object v2, p0, Lcom/motorola/camera/service/WatermarkGenerator;->mLogoBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 8
    iget-object v2, p0, Lcom/motorola/camera/service/WatermarkGenerator;->mLogoBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 9
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 10
    iget-boolean v3, p0, Lcom/motorola/camera/service/WatermarkGenerator;->mIsRtl:Z

    if-nez v3, :cond_1

    .line 11
    iget v3, p0, Lcom/motorola/camera/service/WatermarkGenerator;->mLogoMarginH:I

    iput v3, v2, Landroid/graphics/Rect;->left:I

    goto :goto_0

    .line 12
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/motorola/camera/service/WatermarkGenerator;->mLogoMarginH:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/motorola/camera/service/WatermarkGenerator;->mLogoBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 13
    :goto_0
    iget v3, p0, Lcom/motorola/camera/service/WatermarkGenerator;->mLogoMarginV:I

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 14
    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lcom/motorola/camera/service/WatermarkGenerator;->mLogoBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    add-int/2addr v4, v3

    iput v4, v2, Landroid/graphics/Rect;->right:I

    .line 15
    iget v3, v2, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/motorola/camera/service/WatermarkGenerator;->mLogoBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    add-int/2addr v4, v3

    iput v4, v2, Landroid/graphics/Rect;->bottom:I

    .line 16
    iget-object v3, p0, Lcom/motorola/camera/service/WatermarkGenerator;->mLogoBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v3, v0, v2, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 17
    iget v0, p0, Lcom/motorola/camera/service/WatermarkGenerator;->mLogoMarginH:I

    iget-object v2, p0, Lcom/motorola/camera/service/WatermarkGenerator;->mLogoBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    add-int/2addr v2, v0

    iget v0, p0, Lcom/motorola/camera/service/WatermarkGenerator;->mLogoMarginH:I

    add-int/2addr v2, v0

    .line 18
    iget-boolean v0, p0, Lcom/motorola/camera/service/WatermarkGenerator;->mIsRtl:Z

    if-eqz v0, :cond_2

    .line 19
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    sub-int v2, p1, v2

    .line 20
    :cond_2
    iget p1, p0, Lcom/motorola/camera/service/WatermarkGenerator;->mLineWidth:I

    int-to-float p1, p1

    invoke-virtual {v6, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 21
    iget p1, p0, Lcom/motorola/camera/service/WatermarkGenerator;->mLineColor:I

    invoke-virtual {v6, p1}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v4, v2

    .line 22
    iget p1, p0, Lcom/motorola/camera/service/WatermarkGenerator;->mLineTop:I

    int-to-float v3, p1

    iget p0, p0, Lcom/motorola/camera/service/WatermarkGenerator;->mLineHeight:I

    add-int/2addr p1, p0

    int-to-float v5, p1

    move v2, v4

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public setSignText(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/service/WatermarkGenerator;->mSignText:Ljava/lang/String;

    .line 2
    iget-boolean v0, p0, Lcom/motorola/camera/service/WatermarkGenerator;->mIsSignatureOn:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/motorola/camera/service/WatermarkGenerator;->mIsSignPresent:Z

    return-void
.end method

.method public setSignatureOn(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/motorola/camera/service/WatermarkGenerator;->mIsSignatureOn:Z

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/motorola/camera/service/WatermarkGenerator;->mSignText:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/motorola/camera/service/WatermarkGenerator;->mIsSignPresent:Z

    return-void
.end method
