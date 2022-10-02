.class public final synthetic Lcom/motorola/camera/editor/ui/FilterButtonView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/motorola/camera/editor/ui/FilterButtonView;

.field public final synthetic f$1:Lcom/motorola/camera/editor/ui/FilterButtonView$ClickFilter;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/editor/ui/FilterButtonView;Lcom/motorola/camera/editor/ui/FilterButtonView$ClickFilter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/editor/ui/FilterButtonView$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/editor/ui/FilterButtonView;

    iput-object p2, p0, Lcom/motorola/camera/editor/ui/FilterButtonView$$ExternalSyntheticLambda0;->f$1:Lcom/motorola/camera/editor/ui/FilterButtonView$ClickFilter;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 9

    iget-object v0, p0, Lcom/motorola/camera/editor/ui/FilterButtonView$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/editor/ui/FilterButtonView;

    iget-object p0, p0, Lcom/motorola/camera/editor/ui/FilterButtonView$$ExternalSyntheticLambda0;->f$1:Lcom/motorola/camera/editor/ui/FilterButtonView$ClickFilter;

    sget v1, Lcom/motorola/camera/editor/ui/FilterButtonView;->$r8$clinit:I

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1
    check-cast p0, Lcom/motorola/camera/editor/DocEditorActivity$2;

    .line 2
    iget-object v1, p0, Lcom/motorola/camera/editor/DocEditorActivity$2;->this$0:Lcom/motorola/camera/editor/DocEditorActivity;

    .line 3
    iget-object v1, v1, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    if-nez v1, :cond_1

    goto/16 :goto_3

    .line 4
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 5
    iget-object p0, p0, Lcom/motorola/camera/editor/DocEditorActivity$2;->this$0:Lcom/motorola/camera/editor/DocEditorActivity;

    .line 6
    iget-object v4, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    if-eqz v4, :cond_9

    iget-object v5, v4, Lcom/motorola/camera/editor/DocJpegHolder;->mAdjustedBmp:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_9

    if-ne v1, v2, :cond_2

    .line 7
    invoke-virtual {v4}, Lcom/motorola/camera/editor/DocJpegHolder;->releaseEnhanced()V

    .line 8
    iget-object v4, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    invoke-virtual {v4}, Lcom/motorola/camera/editor/DocJpegHolder;->releaseMono()V

    goto/16 :goto_1

    :cond_2
    const/4 v6, 0x3

    new-array v7, v6, [I

    const/4 v8, 0x2

    if-ne v1, v8, :cond_4

    .line 9
    invoke-virtual {v4}, Lcom/motorola/camera/editor/DocJpegHolder;->releaseEnhanced()V

    .line 10
    iget-object v4, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    iget-object v5, v4, Lcom/motorola/camera/editor/DocJpegHolder;->mMonoBmp:Landroid/graphics/Bitmap;

    if-nez v5, :cond_3

    .line 11
    iget-object v4, v4, Lcom/motorola/camera/editor/DocJpegHolder;->mAdjustedBmp:Landroid/graphics/Bitmap;

    .line 12
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v5

    .line 13
    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 14
    invoke-virtual {v4, v5}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 15
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    .line 16
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-static {v5, v6, v4, v7, v3}, Lcom/motorola/camera/mcf/DocUtil;->monoRGB([BII[IZ)[B

    move-result-object v4

    if-eqz v4, :cond_3

    .line 17
    iget-object v5, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    aget v6, v7, v8

    aget v7, v7, v2

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, v5, Lcom/motorola/camera/editor/DocJpegHolder;->mMonoBmp:Landroid/graphics/Bitmap;

    .line 18
    iget-object v5, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    iget-object v5, v5, Lcom/motorola/camera/editor/DocJpegHolder;->mMonoBmp:Landroid/graphics/Bitmap;

    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 19
    :cond_3
    iget-object v4, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    iget-object v5, v4, Lcom/motorola/camera/editor/DocJpegHolder;->mMonoBmp:Landroid/graphics/Bitmap;

    goto :goto_1

    :cond_4
    if-ne v1, v6, :cond_6

    .line 20
    invoke-virtual {v4}, Lcom/motorola/camera/editor/DocJpegHolder;->releaseMono()V

    .line 21
    iget-object v4, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    iget-object v5, v4, Lcom/motorola/camera/editor/DocJpegHolder;->mEnhancedBmp:Landroid/graphics/Bitmap;

    if-nez v5, :cond_5

    .line 22
    iget-object v4, v4, Lcom/motorola/camera/editor/DocJpegHolder;->mAdjustedBmp:Landroid/graphics/Bitmap;

    .line 23
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v5

    .line 24
    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 25
    invoke-virtual {v4, v5}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 26
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    .line 27
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-static {v5, v6, v4, v7, v3}, Lcom/motorola/camera/mcf/DocUtil;->enhanceRGB([BII[IZ)[B

    move-result-object v4

    if-eqz v4, :cond_5

    .line 28
    iget-object v5, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    aget v6, v7, v8

    aget v7, v7, v2

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, v5, Lcom/motorola/camera/editor/DocJpegHolder;->mEnhancedBmp:Landroid/graphics/Bitmap;

    .line 29
    iget-object v5, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    iget-object v5, v5, Lcom/motorola/camera/editor/DocJpegHolder;->mEnhancedBmp:Landroid/graphics/Bitmap;

    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 30
    :cond_5
    iget-object v4, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    iget-object v5, v4, Lcom/motorola/camera/editor/DocJpegHolder;->mEnhancedBmp:Landroid/graphics/Bitmap;

    .line 31
    :cond_6
    :goto_1
    iget-object v4, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    iput v1, v4, Lcom/motorola/camera/editor/DocJpegHolder;->mFilterMode:I

    .line 32
    iget v1, v4, Lcom/motorola/camera/editor/DocJpegHolder;->mOrientation:F

    float-to-int v1, v1

    .line 33
    iget-object v4, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mReviewImage:Lcom/motorola/camera/editor/ui/ScaleImageView;

    invoke-virtual {v4, v1}, Lcom/motorola/camera/editor/ui/ScaleImageView;->setLastRotate(I)V

    .line 34
    iget-object v1, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mReviewImage:Lcom/motorola/camera/editor/ui/ScaleImageView;

    invoke-virtual {v1, v5}, Landroidx/appcompat/widget/AppCompatImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 35
    iget-boolean v1, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mDocServiceMode:Z

    if-nez v1, :cond_8

    iget-boolean v1, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mAdjusted:Z

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    iget v1, v1, Lcom/motorola/camera/editor/DocJpegHolder;->mFilterMode:I

    iget v4, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mInitFilter:I

    if-eq v1, v4, :cond_7

    goto :goto_2

    :cond_7
    move v2, v3

    .line 36
    :cond_8
    :goto_2
    iget-object p0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mSaveButton:Landroid/widget/Button;

    invoke-virtual {p0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 37
    :cond_9
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/motorola/camera/editor/ui/FilterButtonView;->setCenter(I)V

    :goto_3
    return-void
.end method
