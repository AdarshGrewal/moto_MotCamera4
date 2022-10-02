.class public final Lcom/motorola/camera/scenedetection/scene/SLSIVendorTagScene;
.super Lcom/motorola/camera/scenedetection/scene/VendorTagScene;
.source "SceneImpl.kt"


# instance fields
.field public final value:[Ljava/lang/Long;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/scenedetection/scene/Scene$Type;Lcom/motorola/camera/scenedetection/scene/Scene$OptType;IJZLcom/motorola/camera/scenedetection/scene/FocusMode;)V
    .locals 8

    const-string v0, "sceneType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "optType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "focusMode"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v5, p3

    move v6, p6

    move-object v7, p7

    .line 3
    invoke-direct/range {v1 .. v7}, Lcom/motorola/camera/scenedetection/scene/VendorTagScene;-><init>(Lcom/motorola/camera/scenedetection/scene/Scene$Type;Lcom/motorola/camera/scenedetection/scene/Scene$OptType;Ljava/lang/Integer;IZLcom/motorola/camera/scenedetection/scene/FocusMode;)V

    const/4 p1, 0x7

    new-array p2, p1, [J

    const/4 p3, 0x0

    const-wide/16 p6, 0x0

    aput-wide p6, p2, p3

    const/4 v0, 0x1

    aput-wide p4, p2, v0

    const/4 p4, 0x2

    const-wide/16 v0, 0x3e7

    aput-wide v0, p2, p4

    const/4 p4, 0x3

    aput-wide p6, p2, p4

    const/4 p4, 0x4

    aput-wide p6, p2, p4

    const/4 p4, 0x5

    aput-wide p6, p2, p4

    const/4 p4, 0x6

    aput-wide p6, p2, p4

    const-string p4, "$this$toTypedArray"

    .line 4
    invoke-static {p2, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-array p4, p1, [Ljava/lang/Long;

    :goto_0
    if-ge p3, p1, :cond_0

    .line 5
    aget-wide p5, p2, p3

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p5

    aput-object p5, p4, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 6
    :cond_0
    iput-object p4, p0, Lcom/motorola/camera/scenedetection/scene/SLSIVendorTagScene;->value:[Ljava/lang/Long;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/motorola/camera/scenedetection/scene/Scene$Type;Lcom/motorola/camera/scenedetection/scene/Scene$OptType;IJZLcom/motorola/camera/scenedetection/scene/FocusMode;I)V
    .locals 9

    and-int/lit8 v0, p8, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    move v7, v0

    goto :goto_0

    :cond_0
    move v7, p6

    :goto_0
    and-int/lit8 v0, p8, 0x20

    if-eqz v0, :cond_1

    .line 1
    sget-object v0, Lcom/motorola/camera/scenedetection/scene/FocusMode;->AUTO:Lcom/motorola/camera/scenedetection/scene/FocusMode;

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    move-object v8, v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-wide v5, p4

    .line 2
    invoke-direct/range {v1 .. v8}, Lcom/motorola/camera/scenedetection/scene/SLSIVendorTagScene;-><init>(Lcom/motorola/camera/scenedetection/scene/Scene$Type;Lcom/motorola/camera/scenedetection/scene/Scene$OptType;IJZLcom/motorola/camera/scenedetection/scene/FocusMode;)V

    return-void
.end method


# virtual methods
.method public applyTags(Lcom/motorola/camera/fsm/RequestWrapper;)V
    .locals 2

    const-string/jumbo v0, "wrapper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p1, Lcom/motorola/camera/fsm/RequestWrapper;->mBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    const-string/jumbo v1, "wrapper.mBuilder"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/scenedetection/scene/VendorTagScene;->applyFocusAndFlash(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 4
    sget-object v0, Lcom/motorola/camera/settings/CustomKeyHelper;->CONTROL_SLSI_SCENE_MODE_INFO_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureRequestKey;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p1, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    .line 5
    iget-object p1, p1, Lcom/motorola/camera/fsm/RequestWrapper;->mBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object p0, p0, Lcom/motorola/camera/scenedetection/scene/SLSIVendorTagScene;->value:[Ljava/lang/Long;

    .line 6
    invoke-virtual {v0, v1, p1, p0}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureRequestKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public applyTags(Lcom/motorola/camera/fsm/camera/modes/AbstractMode;)V
    .locals 2

    .line 1
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

    const-string/jumbo v1, "wrapper"

    .line 2
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/scenedetection/scene/SLSIVendorTagScene;->applyTags(Lcom/motorola/camera/fsm/RequestWrapper;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public revertTags(Lcom/motorola/camera/fsm/camera/modes/AbstractMode;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->getStreamingRequests()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/fsm/RequestWrapper;

    .line 2
    iget-object v1, v0, Lcom/motorola/camera/fsm/RequestWrapper;->mBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    const-string/jumbo v2, "wrapper.mBuilder"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/motorola/camera/scenedetection/scene/VendorTagScene;->revertFocusAndFlash(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 3
    sget-object v1, Lcom/motorola/camera/settings/CustomKeyHelper;->CONTROL_SLSI_SCENE_MODE_INFO_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureRequestKey;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, v0, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    .line 4
    iget-object v0, v0, Lcom/motorola/camera/fsm/RequestWrapper;->mBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    const/4 v3, 0x0

    .line 5
    invoke-virtual {v1, v2, v0, v3}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureRequestKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method
