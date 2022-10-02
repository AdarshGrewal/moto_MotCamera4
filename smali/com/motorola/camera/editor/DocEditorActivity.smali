.class public Lcom/motorola/camera/editor/DocEditorActivity;
.super Landroid/app/Activity;
.source "DocEditorActivity.java"

# interfaces
.implements Lcom/motorola/camera/editor/load/LoadDocJpegListener;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final jpegSaveListener:Lcom/motorola/camera/saving/SaveListener;

.field public mAdjustImage:Landroid/widget/ImageView;

.field public mAdjustPage:Landroid/widget/RelativeLayout;

.field public mAdjusted:Z

.field public mCropRectView:Lcom/motorola/camera/editor/ui/DocRectangleView;

.field public mDeleteButton:Landroid/widget/ImageButton;

.field public mDialogClickListener:Landroid/content/DialogInterface$OnClickListener;

.field public mDialogDeleteListener:Landroid/content/DialogInterface$OnClickListener;

.field public mDocServiceMode:Z

.field public mFilterButtons:Lcom/motorola/camera/editor/ui/FilterButtonView;

.field public mInitFilter:I

.field public mInitRotate:F

.field public volatile mIsActivityRunning:Z

.field public mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

.field public mJpegLoadFinish:Z

.field public mMagnifier:Lcom/motorola/camera/editor/ui/AdjustingMagnifier;

.field public mReviewImage:Lcom/motorola/camera/editor/ui/ScaleImageView;

.field public mReviewPage:Landroid/widget/RelativeLayout;

.field public mRotateButton:Landroid/widget/ImageButton;

.field public mSaveButton:Landroid/widget/Button;

.field public mSpinner:Landroid/widget/ProgressBar;

.field public mSpinnerText:Landroid/widget/TextView;

.field public mState:I

.field public final mUiHandler:Landroid/os/Handler;


# direct methods
.method public static $r8$lambda$h2pf6d9OQmVKfz0pHZXWFOPbBOc(Lcom/motorola/camera/editor/DocEditorActivity;Landroid/content/DialogInterface;I)V
    .locals 1

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0

    .line 2
    :cond_0
    iget p1, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mState:I

    const/4 p2, 0x3

    const/4 v0, 0x0

    if-ne p1, p2, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/motorola/camera/editor/DocEditorActivity;->initRectWithOriginalPoints()V

    const/4 p1, 0x2

    .line 4
    invoke-virtual {p0, p1}, Lcom/motorola/camera/editor/DocEditorActivity;->updateViewForState$enumunboxing$(I)V

    .line 5
    iget-object p0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mCropRectView:Lcom/motorola/camera/editor/ui/DocRectangleView;

    .line 6
    iput-boolean v0, p0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mAdjusted:Z

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 8
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 9
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 2
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mUiHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mIsActivityRunning:Z

    const/4 v1, 0x1

    .line 4
    iput v1, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mState:I

    const/4 v2, 0x0

    .line 5
    iput-object v2, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    .line 6
    iput-boolean v0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegLoadFinish:Z

    .line 7
    iput-boolean v0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mDocServiceMode:Z

    .line 8
    iput-boolean v0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mAdjusted:Z

    .line 9
    iput v1, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mInitFilter:I

    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mInitRotate:F

    .line 11
    new-instance v0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/editor/DocEditorActivity;)V

    iput-object v0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mDialogClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 12
    new-instance v0, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/editor/DocEditorActivity;)V

    iput-object v0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mDialogDeleteListener:Landroid/content/DialogInterface$OnClickListener;

    .line 13
    new-instance v0, Lcom/motorola/camera/editor/DocEditorActivity$1;

    invoke-direct {v0, p0}, Lcom/motorola/camera/editor/DocEditorActivity$1;-><init>(Lcom/motorola/camera/editor/DocEditorActivity;)V

    iput-object v0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->jpegSaveListener:Lcom/motorola/camera/saving/SaveListener;

    return-void
.end method


# virtual methods
.method public final getCroppedBmpFromOriginalJpeg([I[I)[B
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    iget-object v0, v0, Lcom/motorola/camera/editor/DocJpegHolder;->mJpegBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v0

    .line 2
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    iget-object v1, v1, Lcom/motorola/camera/editor/DocJpegHolder;->mJpegBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v0}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 4
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    .line 5
    iget-object v0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    iget-object v0, v0, Lcom/motorola/camera/editor/DocJpegHolder;->mJpegBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 6
    iget-object p0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    iget-object p0, p0, Lcom/motorola/camera/editor/DocJpegHolder;->mJpegBmp:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    const/4 v7, 0x0

    move-object v5, p1

    move-object v6, p2

    .line 7
    invoke-static/range {v2 .. v7}, Lcom/motorola/camera/mcf/DocUtil;->cropRgb([BII[I[IZ)[B

    move-result-object p0

    return-object p0
.end method

.method public final hideSystemUi()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 3
    new-instance v1, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda7;-><init>(Lcom/motorola/camera/editor/DocEditorActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    return-void
.end method

.method public final initRectWithOriginalPoints()V
    .locals 23

    move-object/from16 v0, p0

    const/16 v1, 0x8

    new-array v2, v1, [F

    .line 1
    iget-object v3, v0, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    iget-object v4, v3, Lcom/motorola/camera/editor/DocJpegHolder;->mAdjustedPoints:[F

    if-nez v4, :cond_0

    .line 2
    iget-object v4, v3, Lcom/motorola/camera/editor/DocJpegHolder;->mOriginalPoints:[F

    :cond_0
    const/4 v3, 0x0

    .line 3
    invoke-static {v4, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4
    iget-object v1, v0, Lcom/motorola/camera/editor/DocEditorActivity;->mCropRectView:Lcom/motorola/camera/editor/ui/DocRectangleView;

    iget-object v0, v0, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    iget v4, v0, Lcom/motorola/camera/editor/DocJpegHolder;->mJpegWidth:I

    iget v5, v0, Lcom/motorola/camera/editor/DocJpegHolder;->mJpegHeight:I

    iget v0, v0, Lcom/motorola/camera/editor/DocJpegHolder;->mOrientation:F

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v6, v1, Lcom/motorola/camera/editor/ui/DocRectangleView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    .line 6
    :cond_1
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, v1, Lcom/motorola/camera/editor/ui/DocRectangleView;->mBitmap:Landroid/graphics/Bitmap;

    .line 7
    iput v0, v1, Lcom/motorola/camera/editor/ui/DocRectangleView;->mOrientation:F

    float-to-int v6, v0

    .line 8
    sget-object v7, Lcom/motorola/camera/editor/ui/DocRectangleView$TouchPoint;->BM:Lcom/motorola/camera/editor/ui/DocRectangleView$TouchPoint;

    sget-object v8, Lcom/motorola/camera/editor/ui/DocRectangleView$TouchPoint;->RM:Lcom/motorola/camera/editor/ui/DocRectangleView$TouchPoint;

    sget-object v9, Lcom/motorola/camera/editor/ui/DocRectangleView$TouchPoint;->TM:Lcom/motorola/camera/editor/ui/DocRectangleView$TouchPoint;

    sget-object v10, Lcom/motorola/camera/editor/ui/DocRectangleView$TouchPoint;->LM:Lcom/motorola/camera/editor/ui/DocRectangleView$TouchPoint;

    sget-object v11, Lcom/motorola/camera/editor/ui/DocRectangleView$TouchPoint;->LB:Lcom/motorola/camera/editor/ui/DocRectangleView$TouchPoint;

    sget-object v12, Lcom/motorola/camera/editor/ui/DocRectangleView$TouchPoint;->RB:Lcom/motorola/camera/editor/ui/DocRectangleView$TouchPoint;

    sget-object v13, Lcom/motorola/camera/editor/ui/DocRectangleView$TouchPoint;->RT:Lcom/motorola/camera/editor/ui/DocRectangleView$TouchPoint;

    sget-object v14, Lcom/motorola/camera/editor/ui/DocRectangleView$TouchPoint;->LT:Lcom/motorola/camera/editor/ui/DocRectangleView$TouchPoint;

    sget-object v15, Lcom/motorola/camera/editor/ui/DocRectangleView$TouchPoint;->TP_MAP:Ljava/util/TreeMap;

    invoke-virtual {v15}, Ljava/util/TreeMap;->clear()V

    const/16 v3, 0x5a

    const/16 v16, 0x7

    const/16 v17, 0x6

    const/16 v18, 0x5

    const/16 v19, 0x4

    const/16 v20, 0x3

    const/16 v21, 0x2

    const/16 v22, 0x1

    if-eq v6, v3, :cond_4

    const/16 v3, 0xb4

    if-eq v6, v3, :cond_3

    const/16 v3, 0x10e

    if-eq v6, v3, :cond_2

    const/4 v3, 0x0

    .line 9
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v15, v6, v14}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v15, v3, v13}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v15, v3, v12}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v15, v3, v11}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v15, v3, v10}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v15, v3, v9}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v15, v3, v8}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v15, v3, v7}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    .line 17
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v15, v6, v11}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v15, v3, v14}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v15, v3, v13}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v15, v3, v12}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v15, v3, v7}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v15, v3, v10}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v15, v3, v9}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v15, v3, v8}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    .line 25
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v15, v6, v12}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v15, v3, v11}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v15, v3, v14}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v15, v3, v13}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v15, v3, v8}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v15, v3, v7}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v15, v3, v10}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v15, v3, v9}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    const/4 v3, 0x0

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    .line 33
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v15, v6, v13}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v15, v6, v12}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v15, v6, v11}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v15, v6, v14}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v15, v6, v9}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v15, v6, v8}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v15, v6, v7}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v15, v6, v10}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    const/high16 v6, 0x42b40000    # 90.0f

    cmpl-float v7, v0, v6

    if-eqz v7, :cond_6

    const/high16 v7, 0x43870000    # 270.0f

    cmpl-float v7, v0, v7

    if-nez v7, :cond_5

    goto :goto_2

    :cond_5
    move v7, v3

    goto :goto_3

    :cond_6
    :goto_2
    move/from16 v7, v22

    :goto_3
    if-eqz v7, :cond_7

    move v8, v5

    goto :goto_4

    :cond_7
    move v8, v4

    :goto_4
    if-eqz v7, :cond_8

    move v7, v4

    goto :goto_5

    :cond_8
    move v7, v5

    .line 41
    :goto_5
    new-instance v14, Landroid/graphics/Matrix;

    invoke-direct {v14}, Landroid/graphics/Matrix;-><init>()V

    const/4 v9, 0x0

    cmpl-float v10, v0, v9

    const/high16 v11, 0x40000000    # 2.0f

    if-eqz v10, :cond_9

    neg-int v12, v4

    int-to-float v12, v12

    div-float/2addr v12, v11

    neg-int v13, v5

    int-to-float v13, v13

    div-float/2addr v13, v11

    .line 42
    invoke-virtual {v14, v12, v13}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 43
    invoke-virtual {v14, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 44
    :cond_9
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    add-float/2addr v0, v6

    const/high16 v6, 0x43340000    # 180.0f

    rem-float/2addr v0, v6

    cmpl-float v0, v0, v9

    if-nez v0, :cond_a

    move/from16 v3, v22

    :cond_a
    if-eqz v3, :cond_b

    move v0, v5

    goto :goto_6

    :cond_b
    move v0, v4

    :goto_6
    if-eqz v3, :cond_c

    goto :goto_7

    :cond_c
    move v4, v5

    :goto_7
    if-ne v0, v8, :cond_d

    if-eq v4, v7, :cond_e

    :cond_d
    int-to-float v3, v8

    int-to-float v0, v0

    div-float/2addr v3, v0

    int-to-float v0, v7

    int-to-float v4, v4

    div-float/2addr v0, v4

    .line 45
    invoke-virtual {v14, v3, v0}, Landroid/graphics/Matrix;->postScale(FF)Z

    :cond_e
    if-eqz v10, :cond_f

    int-to-float v0, v8

    div-float/2addr v0, v11

    int-to-float v3, v7

    div-float/2addr v3, v11

    .line 46
    invoke-virtual {v14, v0, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 47
    :cond_f
    invoke-virtual {v14, v2}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 48
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, v1, Lcom/motorola/camera/editor/ui/DocRectangleView;->mInvertMatrix:Landroid/graphics/Matrix;

    .line 49
    invoke-virtual {v14, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 50
    iget-object v0, v1, Lcom/motorola/camera/editor/ui/DocRectangleView;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 51
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    const/4 v15, 0x1

    move-object v9, v0

    .line 52
    invoke-static/range {v9 .. v15}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, v1, Lcom/motorola/camera/editor/ui/DocRectangleView;->mBitmap:Landroid/graphics/Bitmap;

    .line 53
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 54
    invoke-virtual {v1, v2}, Lcom/motorola/camera/editor/ui/DocRectangleView;->updatePoints([F)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p3, 0x65

    if-ne p1, p3, :cond_0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    iget-object p2, p0, Lcom/motorola/camera/editor/DocEditorActivity;->jpegSaveListener:Lcom/motorola/camera/saving/SaveListener;

    invoke-static {p0, p1, p2, p3}, Lcom/motorola/camera/saving/SaveImageService;->saveDocument(Landroid/app/Activity;Lcom/motorola/camera/editor/DocJpegHolder;Lcom/motorola/camera/saving/SaveListener;I)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mCropRectView:Lcom/motorola/camera/editor/ui/DocRectangleView;

    .line 3
    iget-boolean v0, v0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mAdjusted:Z

    if-nez v0, :cond_0

    const/4 v0, 0x2

    .line 4
    invoke-virtual {p0, v0}, Lcom/motorola/camera/editor/DocEditorActivity;->updateViewForState$enumunboxing$(I)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mMagnifier:Lcom/motorola/camera/editor/ui/AdjustingMagnifier;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6
    invoke-virtual {p0}, Lcom/motorola/camera/editor/DocEditorActivity;->showExitDialog()V

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mSaveButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {p0}, Lcom/motorola/camera/editor/DocEditorActivity;->showExitDialog()V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 9
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 10
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 11
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 16

    move-object/from16 v0, p0

    .line 1
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x8

    .line 3
    invoke-virtual {v0, v2}, Landroid/app/Activity;->requestWindowFeature(I)Z

    const/16 v2, 0x9

    .line 4
    invoke-virtual {v0, v2}, Landroid/app/Activity;->requestWindowFeature(I)Z

    const/16 v2, 0x400

    .line 5
    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    const/16 v2, 0x80

    .line 6
    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 7
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {v1}, Lcom/motorola/camera/Util;->setupWindow(Landroid/view/Window;)V

    .line 8
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/editor/DocEditorActivity;->hideSystemUi()V

    const v1, 0x7f0d0056

    .line 9
    invoke-virtual {v0, v1}, Landroid/app/Activity;->setContentView(I)V

    const v1, 0x7f0a007e

    .line 10
    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 11
    new-instance v2, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0}, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/editor/DocEditorActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a030b

    .line 12
    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, v0, Lcom/motorola/camera/editor/DocEditorActivity;->mReviewPage:Landroid/widget/RelativeLayout;

    const v1, 0x7f0a030a

    .line 13
    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/editor/ui/ScaleImageView;

    iput-object v1, v0, Lcom/motorola/camera/editor/DocEditorActivity;->mReviewImage:Lcom/motorola/camera/editor/ui/ScaleImageView;

    const v1, 0x7f0a01a6

    .line 14
    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/editor/ui/FilterButtonView;

    iput-object v1, v0, Lcom/motorola/camera/editor/DocEditorActivity;->mFilterButtons:Lcom/motorola/camera/editor/ui/FilterButtonView;

    const v1, 0x7f0a0319

    .line 15
    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, v0, Lcom/motorola/camera/editor/DocEditorActivity;->mSpinner:Landroid/widget/ProgressBar;

    const v1, 0x7f0a03bf

    .line 16
    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/motorola/camera/editor/DocEditorActivity;->mSpinnerText:Landroid/widget/TextView;

    .line 17
    iget-object v1, v0, Lcom/motorola/camera/editor/DocEditorActivity;->mFilterButtons:Lcom/motorola/camera/editor/ui/FilterButtonView;

    new-instance v2, Lcom/motorola/camera/editor/DocEditorActivity$2;

    invoke-direct {v2, v0}, Lcom/motorola/camera/editor/DocEditorActivity$2;-><init>(Lcom/motorola/camera/editor/DocEditorActivity;)V

    .line 18
    invoke-virtual {v1}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v3, :cond_0

    goto/16 :goto_1

    .line 19
    :cond_0
    invoke-virtual {v1, v5}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 20
    invoke-virtual {v3}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 21
    iget-object v6, v1, Lcom/motorola/camera/editor/ui/FilterButtonView;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 22
    new-instance v7, Landroid/widget/TextView;

    iget-object v8, v1, Lcom/motorola/camera/editor/ui/FilterButtonView;->mContext:Landroid/content/Context;

    invoke-direct {v7, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 23
    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v9, 0x2

    div-int/2addr v6, v9

    iget-object v10, v1, Lcom/motorola/camera/editor/ui/FilterButtonView;->mContext:Landroid/content/Context;

    const/high16 v11, 0x42200000    # 40.0f

    invoke-static {v10, v11}, Lcom/motorola/camera/Util;->dp2px(Landroid/content/Context;F)I

    move-result v10

    sub-int v10, v6, v10

    const/4 v11, -0x2

    invoke-direct {v8, v10, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 24
    invoke-virtual {v3, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 25
    invoke-static {}, Landroidx/constraintlayout/core/SolverVariable$Type$r8$EnumUnboxingUtility;->com$motorola$camera$editor$ui$FilterButtonView$Mode$s$values()[I

    move-result-object v7

    array-length v8, v7

    move v10, v5

    :goto_0
    if-ge v10, v8, :cond_1

    aget v12, v7, v10

    .line 26
    new-instance v13, Landroid/widget/TextView;

    iget-object v14, v1, Lcom/motorola/camera/editor/ui/FilterButtonView;->mContext:Landroid/content/Context;

    invoke-direct {v13, v14}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 27
    new-instance v14, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v14, v11, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 28
    invoke-virtual {v13, v4}, Landroid/widget/TextView;->setSingleLine(Z)V

    const v14, 0x7f1201e4

    .line 29
    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setTextAppearance(I)V

    const/high16 v14, 0x41700000    # 15.0f

    .line 30
    invoke-virtual {v13, v9, v14}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 31
    iget-object v15, v1, Lcom/motorola/camera/editor/ui/FilterButtonView;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    .line 32
    invoke-static {v12}, Landroidx/constraintlayout/core/SolverVariable$Type$r8$EnumUnboxingUtility;->getmText$$com$motorola$camera$editor$ui$FilterButtonView$Mode(I)I

    move-result v9

    .line 33
    invoke-virtual {v15, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v13, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    invoke-static {v12}, Landroidx/constraintlayout/core/SolverVariable$Type$r8$EnumUnboxingUtility;->getmId$$com$motorola$camera$editor$ui$FilterButtonView$Mode(I)I

    move-result v9

    .line 35
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v13, v9}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    const/16 v9, 0x11

    .line 36
    invoke-virtual {v13, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 37
    iget-object v9, v1, Lcom/motorola/camera/editor/ui/FilterButtonView;->mContext:Landroid/content/Context;

    invoke-static {v9, v14}, Lcom/motorola/camera/Util;->dp2px(Landroid/content/Context;F)I

    move-result v9

    .line 38
    invoke-virtual {v13, v9, v5, v9, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 39
    new-instance v9, Lcom/motorola/camera/editor/ui/FilterButtonView$$ExternalSyntheticLambda0;

    invoke-direct {v9, v1, v2}, Lcom/motorola/camera/editor/ui/FilterButtonView$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/editor/ui/FilterButtonView;Lcom/motorola/camera/editor/ui/FilterButtonView$ClickFilter;)V

    invoke-virtual {v13, v9}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    invoke-virtual {v3, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v10, v10, 0x1

    const/4 v9, 0x2

    goto :goto_0

    .line 41
    :cond_1
    new-instance v2, Landroid/widget/TextView;

    iget-object v7, v1, Lcom/motorola/camera/editor/ui/FilterButtonView;->mContext:Landroid/content/Context;

    invoke-direct {v2, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 42
    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v7, v6, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 43
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 44
    invoke-virtual {v1, v4}, Lcom/motorola/camera/editor/ui/FilterButtonView;->setCenter(I)V

    :goto_1
    const v1, 0x7f0a0057

    .line 45
    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 46
    new-instance v2, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda4;

    invoke-direct {v2, v0}, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda4;-><init>(Lcom/motorola/camera/editor/DocEditorActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a0316

    .line 47
    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, v0, Lcom/motorola/camera/editor/DocEditorActivity;->mSaveButton:Landroid/widget/Button;

    .line 48
    new-instance v2, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda2;

    invoke-direct {v2, v0}, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda2;-><init>(Lcom/motorola/camera/editor/DocEditorActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "DOCUMENT_SERVICE"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/motorola/camera/editor/DocEditorActivity;->mDocServiceMode:Z

    .line 50
    iget-object v2, v0, Lcom/motorola/camera/editor/DocEditorActivity;->mSaveButton:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setEnabled(Z)V

    const v1, 0x7f0a0311

    .line 51
    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, v0, Lcom/motorola/camera/editor/DocEditorActivity;->mRotateButton:Landroid/widget/ImageButton;

    const v2, 0x7f0801ee

    .line 52
    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 53
    iget-object v1, v0, Lcom/motorola/camera/editor/DocEditorActivity;->mRotateButton:Landroid/widget/ImageButton;

    new-instance v2, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda6;

    invoke-direct {v2, v0}, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda6;-><init>(Lcom/motorola/camera/editor/DocEditorActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a0131

    .line 54
    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, v0, Lcom/motorola/camera/editor/DocEditorActivity;->mDeleteButton:Landroid/widget/ImageButton;

    .line 55
    new-instance v2, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda3;

    invoke-direct {v2, v0}, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda3;-><init>(Lcom/motorola/camera/editor/DocEditorActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a005c

    .line 56
    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, v0, Lcom/motorola/camera/editor/DocEditorActivity;->mAdjustPage:Landroid/widget/RelativeLayout;

    const v1, 0x7f0a005a

    .line 57
    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/motorola/camera/editor/DocEditorActivity;->mAdjustImage:Landroid/widget/ImageView;

    const v1, 0x7f0a0114

    .line 58
    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/editor/ui/DocRectangleView;

    iput-object v1, v0, Lcom/motorola/camera/editor/DocEditorActivity;->mCropRectView:Lcom/motorola/camera/editor/ui/DocRectangleView;

    const v1, 0x7f0a005b

    .line 59
    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;

    iput-object v1, v0, Lcom/motorola/camera/editor/DocEditorActivity;->mMagnifier:Lcom/motorola/camera/editor/ui/AdjustingMagnifier;

    .line 60
    iget-object v2, v0, Lcom/motorola/camera/editor/DocEditorActivity;->mCropRectView:Lcom/motorola/camera/editor/ui/DocRectangleView;

    invoke-virtual {v2, v1}, Lcom/motorola/camera/editor/ui/DocRectangleView;->setDocAdjustListener(Lcom/motorola/camera/editor/ui/DocRectangleView$DocAdjustListener;)V

    const v1, 0x7f0a014c

    .line 61
    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 62
    new-instance v2, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda5;

    invoke-direct {v2, v0}, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda5;-><init>(Lcom/motorola/camera/editor/DocEditorActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    invoke-virtual {v0, v4}, Lcom/motorola/camera/editor/DocEditorActivity;->updateViewForState$enumunboxing$(I)V

    .line 64
    iput-boolean v5, v0, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegLoadFinish:Z

    .line 65
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_2

    const-string v1, "DocEditorActivity"

    const-string v2, "Original URI is null"

    .line 66
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 68
    :cond_2
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string v3, "content"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 69
    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    const-string v4, "com.google.android.apps.photos.contentprovider"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_2

    .line 70
    :cond_3
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 71
    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "/ORIGINAL"

    .line 72
    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-gtz v3, :cond_4

    const-string v3, "/REQUIRE_ORIGINAL"

    .line 73
    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    :cond_4
    if-lez v3, :cond_5

    .line 74
    invoke-virtual {v2, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 75
    :cond_5
    invoke-static {v2}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    goto :goto_3

    :cond_6
    :goto_2
    move-object v2, v1

    .line 76
    :goto_3
    new-instance v3, Lcom/motorola/camera/editor/load/LoadDocJpegTask;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v1, v4, v0}, Lcom/motorola/camera/editor/load/LoadDocJpegTask;-><init>(Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Lcom/motorola/camera/editor/load/LoadDocJpegListener;)V

    .line 77
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v1, v5, [Ljava/lang/Void;

    invoke-virtual {v3, v0, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Lcom/motorola/camera/editor/DocJpegHolder;->releaseJpeg()V

    .line 3
    iget-object v1, v0, Lcom/motorola/camera/editor/DocJpegHolder;->mAdjustedBmp:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v1, 0x0

    .line 5
    iput-object v1, v0, Lcom/motorola/camera/editor/DocJpegHolder;->mAdjustedBmp:Landroid/graphics/Bitmap;

    .line 6
    :cond_0
    invoke-virtual {v0}, Lcom/motorola/camera/editor/DocJpegHolder;->releaseMono()V

    .line 7
    invoke-virtual {v0}, Lcom/motorola/camera/editor/DocJpegHolder;->releaseEnhanced()V

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mAdjustImage:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/editor/DocEditorActivity;->releaseImage(Landroid/widget/ImageView;)V

    .line 9
    iget-object v0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mReviewImage:Lcom/motorola/camera/editor/ui/ScaleImageView;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/editor/DocEditorActivity;->releaseImage(Landroid/widget/ImageView;)V

    .line 10
    iget-object v0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mCropRectView:Lcom/motorola/camera/editor/ui/DocRectangleView;

    invoke-virtual {v0}, Lcom/motorola/camera/editor/ui/DocRectangleView;->releaseResource()V

    .line 11
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public onResume()V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const/4 v0, 0x2

    .line 2
    invoke-virtual {p0, v0}, Lcom/motorola/camera/editor/DocEditorActivity;->updateViewForState$enumunboxing$(I)V

    return-void
.end method

.method public onStart()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    const/4 v0, 0x1

    .line 2
    invoke-static {p0, v0}, Lcom/motorola/camera/utility/ActivityUtilKt;->showOnLockScreen(Landroid/app/Activity;Z)V

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 4
    iput-boolean v0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mIsActivityRunning:Z

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 3
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mIsActivityRunning:Z

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_1

    .line 2
    iget-boolean p1, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mIsActivityRunning:Z

    if-nez p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/camera/editor/DocEditorActivity;->hideSystemUi()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final releaseImage(Landroid/widget/ImageView;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 2
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, v0

    :goto_0
    if-eqz p0, :cond_1

    .line 3
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 4
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_1
    return-void
.end method

.method public final showExitDialog()V
    .locals 4

    .line 1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f11013d

    .line 2
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f11013c

    .line 3
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mDialogClickListener:Landroid/content/DialogInterface$OnClickListener;

    const v3, 0x7f110138

    .line 4
    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mDialogClickListener:Landroid/content/DialogInterface$OnClickListener;

    const v3, 0x7f110139

    .line 5
    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 6
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 8
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 9
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 10
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result p0

    .line 11
    invoke-virtual {v1, p0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 12
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/view/Window;->clearFlags(I)V

    return-void
.end method

.method public final updateViewForState$enumunboxing$(I)V
    .locals 7

    .line 1
    invoke-static {p1}, Landroidx/constraintlayout/core/SolverVariable$Type$r8$EnumUnboxingUtility;->$enumboxing$ordinal(I)I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x2

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-eqz v0, :cond_3

    const/4 v5, 0x1

    if-eq v0, v5, :cond_4

    if-eq v0, v2, :cond_0

    const-string p0, "DocEditorActivity"

    const-string p1, "invalid editor state."

    .line 2
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    if-eqz v0, :cond_c

    .line 4
    iget-object v0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mDeleteButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mCropRectView:Lcom/motorola/camera/editor/ui/DocRectangleView;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    iget v1, v1, Lcom/motorola/camera/editor/DocJpegHolder;->mOrientation:F

    .line 6
    iget-object v2, v0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1

    iget v0, v0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mOrientation:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move v5, v4

    :goto_0
    if-nez v5, :cond_2

    .line 7
    invoke-virtual {p0}, Lcom/motorola/camera/editor/DocEditorActivity;->initRectWithOriginalPoints()V

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    invoke-virtual {v0}, Lcom/motorola/camera/editor/DocJpegHolder;->releaseJpeg()V

    .line 9
    iget-object v0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    iget-object v1, v0, Lcom/motorola/camera/editor/DocJpegHolder;->mJpegBuffer:[B

    array-length v2, v1

    invoke-static {v1, v4, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lcom/motorola/camera/editor/DocJpegHolder;->mJpegBmp:Landroid/graphics/Bitmap;

    .line 10
    iget-object v0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    iget-object v1, v0, Lcom/motorola/camera/editor/DocJpegHolder;->mJpegBmp:Landroid/graphics/Bitmap;

    iget v0, v0, Lcom/motorola/camera/editor/DocJpegHolder;->mOrientation:F

    .line 11
    invoke-static {v1, v0, v4, v4, v4}, Lcom/motorola/camera/Util;->rotateImage(Landroid/graphics/Bitmap;FZZZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 12
    iget-object v1, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mAdjustImage:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Lcom/motorola/camera/editor/DocEditorActivity;->releaseImage(Landroid/widget/ImageView;)V

    .line 13
    iget-object v1, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mAdjustImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 14
    iget-object v1, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mMagnifier:Lcom/motorola/camera/editor/ui/AdjustingMagnifier;

    invoke-virtual {v1, v0}, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;->setupImage(Landroid/graphics/Bitmap;)V

    .line 15
    iget-object v0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mMagnifier:Lcom/motorola/camera/editor/ui/AdjustingMagnifier;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 16
    iget-object v0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mCropRectView:Lcom/motorola/camera/editor/ui/DocRectangleView;

    new-instance v1, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0}, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda10;-><init>(Lcom/motorola/camera/editor/DocEditorActivity;)V

    const-wide/16 v5, 0x1f4

    invoke-virtual {v0, v1, v5, v6}, Landroid/widget/ImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 17
    iget-object v0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mReviewPage:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 18
    iget-object v0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mAdjustPage:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 19
    iput p1, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mState:I

    goto/16 :goto_5

    .line 20
    :cond_3
    iput p1, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mState:I

    .line 21
    :cond_4
    iget-object v0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mAdjustPage:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 22
    iget-object v0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mDeleteButton:Landroid/widget/ImageButton;

    iget-boolean v3, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mDocServiceMode:Z

    if-eqz v3, :cond_5

    goto :goto_1

    :cond_5
    move v1, v4

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 23
    iget-object v0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    if-eqz v0, :cond_6

    iget v0, v0, Lcom/motorola/camera/editor/DocJpegHolder;->mOrientation:F

    float-to-int v0, v0

    goto :goto_2

    .line 24
    :cond_6
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "DOCUMENT_ORIENTATION"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 25
    :goto_2
    iget-object v1, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    if-eqz v1, :cond_9

    iget-object v3, v1, Lcom/motorola/camera/editor/DocJpegHolder;->mAdjustedBmp:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_9

    .line 26
    iget v5, v1, Lcom/motorola/camera/editor/DocJpegHolder;->mFilterMode:I

    if-ne v5, v2, :cond_7

    .line 27
    iget-object v3, v1, Lcom/motorola/camera/editor/DocJpegHolder;->mMonoBmp:Landroid/graphics/Bitmap;

    goto :goto_3

    :cond_7
    const/4 v2, 0x3

    if-ne v5, v2, :cond_8

    .line 28
    iget-object v3, v1, Lcom/motorola/camera/editor/DocJpegHolder;->mEnhancedBmp:Landroid/graphics/Bitmap;

    .line 29
    :cond_8
    :goto_3
    iget-object v1, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mReviewImage:Lcom/motorola/camera/editor/ui/ScaleImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->clearAnimation()V

    .line 30
    iget-object v1, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mReviewImage:Lcom/motorola/camera/editor/ui/ScaleImageView;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 31
    iget-object v1, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mReviewImage:Lcom/motorola/camera/editor/ui/ScaleImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 32
    iget-object v1, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mReviewImage:Lcom/motorola/camera/editor/ui/ScaleImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setRotation(F)V

    .line 33
    iget-object v1, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mReviewImage:Lcom/motorola/camera/editor/ui/ScaleImageView;

    invoke-virtual {v1, v0}, Lcom/motorola/camera/editor/ui/ScaleImageView;->setLastRotate(I)V

    .line 34
    iget-object v0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mReviewImage:Lcom/motorola/camera/editor/ui/ScaleImageView;

    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/AppCompatImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_4

    .line 35
    :cond_9
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 36
    iget-object v1, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mReviewImage:Lcom/motorola/camera/editor/ui/ScaleImageView;

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageURI(Landroid/net/Uri;)V

    .line 37
    :goto_4
    iget-object v0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mReviewPage:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 38
    iput p1, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mState:I

    .line 39
    iget-object p0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mMagnifier:Lcom/motorola/camera/editor/ui/AdjustingMagnifier;

    .line 40
    iget-object p1, p0, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    if-eqz p1, :cond_a

    .line 41
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 42
    iput-object v0, p0, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;->mBitmap:Landroid/graphics/Bitmap;

    .line 43
    :cond_a
    iget-object p1, p0, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;->mComposeBmp:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_b

    .line 44
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 45
    iput-object v0, p0, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;->mComposeBmp:Landroid/graphics/Bitmap;

    .line 46
    :cond_b
    iget-object p1, p0, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;->mFinalBmp:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_c

    .line 47
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 48
    iput-object v0, p0, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;->mFinalBmp:Landroid/graphics/Bitmap;

    :cond_c
    :goto_5
    return-void
.end method
