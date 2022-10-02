.class public final synthetic Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent;I)V
    .locals 1

    iput p2, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent$$ExternalSyntheticLambda7;->$r8$classId:I

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent$$ExternalSyntheticLambda7;->f$0:Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent$$ExternalSyntheticLambda7;->$r8$classId:I

    const-string/jumbo v1, "this$0"

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent$$ExternalSyntheticLambda7;->f$0:Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent;->hide()V

    return-void

    :pswitch_1
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent$$ExternalSyntheticLambda7;->f$0:Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent;

    .line 1
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isServiceMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/motorola/camera/provider/photos/PhotosProviderUtils;->preloadPhotosApp(Landroid/content/Context;)V

    :cond_0
    return-void

    .line 4
    :goto_0
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent$$ExternalSyntheticLambda7;->f$0:Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent;

    .line 5
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-object v3, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent;->thumbnailUi:Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailUI;

    if-nez v3, :cond_1

    goto/16 :goto_9

    .line 7
    :cond_1
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 8
    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->isRtlLayout()Z

    move-result v0

    .line 9
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    const/4 v2, 0x2

    new-array v2, v2, [I

    .line 10
    iget-object v4, v3, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailUI;->galleryThumbnail:Landroid/widget/ImageButton;

    invoke-virtual {v4, v2}, Landroid/widget/ImageButton;->getLocationInWindow([I)V

    .line 11
    iget-object v4, v3, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailUI;->galleryThumbnail:Landroid/widget/ImageButton;

    invoke-virtual {v4}, Landroid/widget/ImageButton;->getRootView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 12
    sget-object v4, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 13
    iget-boolean v4, v4, Lcom/motorola/camera/CameraApp;->mDesktopMode:Z

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_5

    .line 14
    iget-object v4, v3, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailUI;->galleryThumbnail:Landroid/widget/ImageButton;

    invoke-virtual {v4}, Landroid/widget/ImageButton;->getContext()Landroid/content/Context;

    move-result-object v4

    instance-of v7, v4, Landroid/app/Activity;

    if-eqz v7, :cond_2

    check-cast v4, Landroid/app/Activity;

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    if-nez v4, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v4}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v4

    if-ne v4, v5, :cond_4

    move v4, v5

    goto :goto_3

    :cond_4
    :goto_2
    move v4, v6

    :goto_3
    if-eqz v4, :cond_5

    .line 15
    iget v4, v1, Landroid/graphics/Rect;->top:I

    .line 16
    iget-object v7, v3, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailUI;->galleryThumbnail:Landroid/widget/ImageButton;

    invoke-virtual {v7}, Landroid/widget/ImageButton;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 17
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v7, v7, Landroid/util/DisplayMetrics;->density:F

    const/high16 v8, 0x42400000    # 48.0f

    mul-float/2addr v7, v8

    float-to-int v7, v7

    add-int/2addr v4, v7

    .line 18
    iput v4, v1, Landroid/graphics/Rect;->top:I

    .line 19
    :cond_5
    iget v4, v3, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailUI;->orientation:I

    const/16 v7, 0x10e

    const/16 v8, 0x5a

    if-eq v4, v8, :cond_a

    if-ne v4, v7, :cond_6

    goto :goto_6

    .line 20
    :cond_6
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v4

    .line 21
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v7

    if-eqz v0, :cond_7

    .line 22
    aget v0, v2, v6

    sub-int v0, v4, v0

    iget-object v6, v3, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailUI;->galleryThumbnail:Landroid/widget/ImageButton;

    invoke-virtual {v6}, Landroid/widget/ImageButton;->getWidth()I

    move-result v6

    sub-int/2addr v0, v6

    goto :goto_4

    :cond_7
    aget v0, v2, v6

    neg-int v0, v0

    .line 23
    :goto_4
    iget v6, v3, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailUI;->orientation:I

    const/16 v8, 0xb4

    if-ne v6, v8, :cond_8

    .line 24
    iget-object v6, v3, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailUI;->galleryThumbnail:Landroid/widget/ImageButton;

    invoke-virtual {v6}, Landroid/widget/ImageButton;->getWidth()I

    move-result v6

    add-int/2addr v0, v6

    .line 25
    :cond_8
    iget v1, v1, Landroid/graphics/Rect;->top:I

    .line 26
    iget v6, v3, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailUI;->orientation:I

    if-ne v6, v8, :cond_9

    aget v2, v2, v5

    neg-int v2, v2

    iget-object v5, v3, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailUI;->galleryThumbnail:Landroid/widget/ImageButton;

    invoke-virtual {v5}, Landroid/widget/ImageButton;->getHeight()I

    move-result v5

    add-int/2addr v5, v2

    goto :goto_5

    :cond_9
    aget v2, v2, v5

    neg-int v5, v2

    :goto_5
    add-int/2addr v1, v5

    goto :goto_8

    .line 27
    :cond_a
    :goto_6
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v4

    .line 28
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v9

    if-eqz v0, :cond_b

    .line 29
    aget v0, v2, v6

    sub-int v0, v9, v0

    iget-object v10, v3, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailUI;->galleryThumbnail:Landroid/widget/ImageButton;

    invoke-virtual {v10}, Landroid/widget/ImageButton;->getWidth()I

    move-result v10

    sub-int/2addr v0, v10

    goto :goto_7

    .line 30
    :cond_b
    aget v0, v2, v6

    neg-int v0, v0

    .line 31
    :goto_7
    iget v10, v3, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailUI;->orientation:I

    if-ne v10, v7, :cond_c

    .line 32
    iget-object v7, v3, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailUI;->galleryThumbnail:Landroid/widget/ImageButton;

    invoke-virtual {v7}, Landroid/widget/ImageButton;->getWidth()I

    move-result v7

    add-int/2addr v0, v7

    .line 33
    :cond_c
    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v7

    add-int/2addr v7, v0

    div-int/lit8 v0, v9, 0x2

    sub-int v0, v7, v0

    .line 34
    aget v2, v2, v5

    neg-int v2, v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    add-int/2addr v1, v2

    div-int/lit8 v2, v4, 0x2

    sub-int/2addr v1, v2

    .line 35
    iget v2, v3, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailUI;->orientation:I

    if-ne v2, v8, :cond_d

    iget-object v2, v3, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailUI;->galleryThumbnail:Landroid/widget/ImageButton;

    invoke-virtual {v2}, Landroid/widget/ImageButton;->getHeight()I

    move-result v6

    :cond_d
    add-int/2addr v1, v6

    move v7, v4

    move v4, v9

    .line 36
    :goto_8
    new-instance v5, Landroid/graphics/Rect;

    add-int/2addr v4, v0

    add-int/2addr v7, v1

    invoke-direct {v5, v0, v1, v4, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 37
    iget-object v0, v3, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailUI;->galleryThumbnail:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07005e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    .line 38
    iget-object v0, v3, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailUI;->galleryThumbnail:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    .line 39
    iget-object v8, v3, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailUI;->galleryThumbnail:Landroid/widget/ImageButton;

    new-instance v9, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailUI$$ExternalSyntheticLambda3;

    move-object v2, v9

    move-object v4, v5

    move-wide v5, v0

    invoke-direct/range {v2 .. v7}, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailUI$$ExternalSyntheticLambda3;-><init>(Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailUI;Landroid/graphics/Rect;JF)V

    invoke-virtual {v8, v9}, Landroid/widget/ImageButton;->post(Ljava/lang/Runnable;)Z

    .line 40
    :goto_9
    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->OPEN_PHOTO:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v0, v1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-interface {p0, v0}, Lcom/motorola/camera/EventListener;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
