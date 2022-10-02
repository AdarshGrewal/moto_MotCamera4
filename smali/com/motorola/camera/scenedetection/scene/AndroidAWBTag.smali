.class public final Lcom/motorola/camera/scenedetection/scene/AndroidAWBTag;
.super Lcom/motorola/camera/scenedetection/scene/VendorTagScene;
.source "SceneImpl.kt"


# instance fields
.field public final synthetic $r8$classId:I

.field public final awbMode:I


# direct methods
.method public constructor <init>(Lcom/motorola/camera/scenedetection/scene/Scene$Type;Lcom/motorola/camera/scenedetection/scene/Scene$OptType;IIZLcom/motorola/camera/scenedetection/scene/FocusMode;I)V
    .locals 10

    move-object v7, p0

    move-object v1, p1

    move-object v2, p2

    move v8, p4

    move-object/from16 v6, p6

    move/from16 v0, p7

    iput v0, v7, Lcom/motorola/camera/scenedetection/scene/AndroidAWBTag;->$r8$classId:I

    const-string v3, "focusMode"

    const-string v4, "optType"

    const-string v5, "sceneType"

    const/4 v9, 0x1

    if-eq v0, v9, :cond_0

    .line 1
    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move v5, p5

    move-object/from16 v6, p6

    .line 2
    invoke-direct/range {v0 .. v6}, Lcom/motorola/camera/scenedetection/scene/VendorTagScene;-><init>(Lcom/motorola/camera/scenedetection/scene/Scene$Type;Lcom/motorola/camera/scenedetection/scene/Scene$OptType;Ljava/lang/Integer;IZLcom/motorola/camera/scenedetection/scene/FocusMode;)V

    .line 3
    iput v8, v7, Lcom/motorola/camera/scenedetection/scene/AndroidAWBTag;->awbMode:I

    return-void

    .line 4
    :cond_0
    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move v5, p5

    move-object/from16 v6, p6

    .line 5
    invoke-direct/range {v0 .. v6}, Lcom/motorola/camera/scenedetection/scene/VendorTagScene;-><init>(Lcom/motorola/camera/scenedetection/scene/Scene$Type;Lcom/motorola/camera/scenedetection/scene/Scene$OptType;Ljava/lang/Integer;IZLcom/motorola/camera/scenedetection/scene/FocusMode;)V

    .line 6
    iput v8, v7, Lcom/motorola/camera/scenedetection/scene/AndroidAWBTag;->awbMode:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/motorola/camera/scenedetection/scene/Scene$Type;Lcom/motorola/camera/scenedetection/scene/Scene$OptType;IIZLcom/motorola/camera/scenedetection/scene/FocusMode;II)V
    .locals 10

    move/from16 v0, p8

    sget-object v1, Lcom/motorola/camera/scenedetection/scene/FocusMode;->AUTO:Lcom/motorola/camera/scenedetection/scene/FocusMode;

    move-object v2, p0

    iput v0, v2, Lcom/motorola/camera/scenedetection/scene/AndroidAWBTag;->$r8$classId:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v0, v5, :cond_2

    and-int/lit8 v0, p7, 0x10

    if-eqz v0, :cond_0

    move v7, v4

    goto :goto_0

    :cond_0
    move v7, p5

    :goto_0
    and-int/lit8 v0, p7, 0x20

    if-eqz v0, :cond_1

    move-object v8, v1

    goto :goto_1

    :cond_1
    move-object v8, v3

    :goto_1
    const/4 v9, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    .line 7
    invoke-direct/range {v2 .. v9}, Lcom/motorola/camera/scenedetection/scene/AndroidAWBTag;-><init>(Lcom/motorola/camera/scenedetection/scene/Scene$Type;Lcom/motorola/camera/scenedetection/scene/Scene$OptType;IIZLcom/motorola/camera/scenedetection/scene/FocusMode;I)V

    return-void

    :cond_2
    and-int/lit8 v0, p7, 0x10

    if-eqz v0, :cond_3

    move v7, v4

    goto :goto_2

    :cond_3
    move v7, p5

    :goto_2
    and-int/lit8 v0, p7, 0x20

    if-eqz v0, :cond_4

    move-object v8, v1

    goto :goto_3

    :cond_4
    move-object v8, v3

    :goto_3
    const/4 v9, 0x1

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    .line 8
    invoke-direct/range {v2 .. v9}, Lcom/motorola/camera/scenedetection/scene/AndroidAWBTag;-><init>(Lcom/motorola/camera/scenedetection/scene/Scene$Type;Lcom/motorola/camera/scenedetection/scene/Scene$OptType;IIZLcom/motorola/camera/scenedetection/scene/FocusMode;I)V

    return-void
.end method


# virtual methods
.method public applyTags(Lcom/motorola/camera/fsm/RequestWrapper;)V
    .locals 3

    iget v0, p0, Lcom/motorola/camera/scenedetection/scene/AndroidAWBTag;->$r8$classId:I

    const-string/jumbo v1, "wrapper.mBuilder"

    const-string/jumbo v2, "wrapper"

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p1, Lcom/motorola/camera/fsm/RequestWrapper;->mBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/scenedetection/scene/VendorTagScene;->applyFocusAndFlash(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 3
    iget-object p1, p1, Lcom/motorola/camera/fsm/RequestWrapper;->mBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    iget p0, p0, Lcom/motorola/camera/scenedetection/scene/AndroidAWBTag;->awbMode:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void

    .line 4
    :goto_0
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object v0, p1, Lcom/motorola/camera/fsm/RequestWrapper;->mBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/scenedetection/scene/VendorTagScene;->applyFocusAndFlash(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 6
    sget-object v0, Lcom/motorola/camera/settings/CustomKeyHelper;->MTK_CONTROL_AI_SCENE_MODE_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureRequestKey;

    iget-object v1, p1, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    .line 7
    iget-object p1, p1, Lcom/motorola/camera/fsm/RequestWrapper;->mBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget p0, p0, Lcom/motorola/camera/scenedetection/scene/AndroidAWBTag;->awbMode:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    .line 8
    invoke-virtual {v0, v1, p1, p0}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureRequestKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public applyTags(Lcom/motorola/camera/fsm/camera/modes/AbstractMode;)V
    .locals 2

    iget v0, p0, Lcom/motorola/camera/scenedetection/scene/AndroidAWBTag;->$r8$classId:I

    const-string/jumbo v1, "wrapper"

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 9
    :pswitch_0
    invoke-virtual {p1}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->getStreamingRequests()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/fsm/RequestWrapper;

    .line 10
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/scenedetection/scene/AndroidAWBTag;->applyTags(Lcom/motorola/camera/fsm/RequestWrapper;)V

    goto :goto_0

    :cond_0
    return-void

    .line 11
    :goto_1
    invoke-virtual {p1}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->getStreamingRequests()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/fsm/RequestWrapper;

    .line 12
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/scenedetection/scene/AndroidAWBTag;->applyTags(Lcom/motorola/camera/fsm/RequestWrapper;)V

    goto :goto_2

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public revertTags(Lcom/motorola/camera/fsm/camera/modes/AbstractMode;)V
    .locals 6

    iget v0, p0, Lcom/motorola/camera/scenedetection/scene/AndroidAWBTag;->$r8$classId:I

    const-string/jumbo v1, "wrapper.mBuilder"

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 1
    :pswitch_0
    invoke-virtual {p1}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->getStreamingRequests()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/fsm/RequestWrapper;

    .line 2
    iget-object v2, v0, Lcom/motorola/camera/fsm/RequestWrapper;->mBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/motorola/camera/scenedetection/scene/VendorTagScene;->revertFocusAndFlash(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 3
    iget-object v0, v0, Lcom/motorola/camera/fsm/RequestWrapper;->mBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v3, 0x1

    .line 4
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 5
    invoke-virtual {v0, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void

    .line 6
    :goto_1
    invoke-virtual {p1}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->getStreamingRequests()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/fsm/RequestWrapper;

    .line 7
    iget-object v2, v0, Lcom/motorola/camera/fsm/RequestWrapper;->mBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/motorola/camera/scenedetection/scene/VendorTagScene;->revertFocusAndFlash(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 8
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPhotoMode()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_2

    .line 9
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isHdrProMode()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_3

    :cond_1
    move-object v2, v3

    goto :goto_4

    :cond_2
    :goto_3
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 10
    :goto_4
    sget-object v4, Lcom/motorola/camera/settings/CustomKeyHelper;->MTK_CONTROL_AI_SCENE_MODE_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureRequestKey;

    iget-object v5, v0, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    .line 11
    iget-object v0, v0, Lcom/motorola/camera/fsm/RequestWrapper;->mBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 12
    invoke-virtual {v4, v5, v0, v2}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureRequestKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    .line 13
    sget-object v0, Lcom/motorola/camera/scenedetection/SceneDetectionManager;->queuedScene:Lcom/motorola/camera/scenedetection/scene/Scene;

    instance-of v2, v0, Lcom/motorola/camera/scenedetection/scene/ActionScene;

    if-nez v2, :cond_3

    goto :goto_5

    :cond_3
    move-object v0, v3

    :goto_5
    sput-object v0, Lcom/motorola/camera/scenedetection/SceneDetectionManager;->currentScene:Lcom/motorola/camera/scenedetection/scene/Scene;

    .line 14
    sput-object v3, Lcom/motorola/camera/scenedetection/SceneDetectionManager;->queuedScene:Lcom/motorola/camera/scenedetection/scene/Scene;

    goto :goto_2

    :cond_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
