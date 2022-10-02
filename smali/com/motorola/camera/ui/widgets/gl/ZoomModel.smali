.class public Lcom/motorola/camera/ui/widgets/gl/ZoomModel;
.super Ljava/lang/Object;
.source "ZoomModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/ui/widgets/gl/ZoomModel$Listener;
    }
.end annotation


# instance fields
.field public mCurrentCameraType:Lcom/motorola/camera/settings/CameraType;

.field public final mIsCliDisplay:Z

.field public mListener:Lcom/motorola/camera/ui/widgets/gl/ZoomModel$Listener;

.field public final mZoomEntityMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;",
            "Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomModel;->mZoomEntityMap:Ljava/util/Map;

    .line 3
    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomModel;->mIsCliDisplay:Z

    return-void
.end method


# virtual methods
.method public getActiveUnLimitedZoomEntityMap()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;",
            "Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomModel;->mZoomEntityMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 3
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;

    .line 4
    iget-boolean v2, v2, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;->mEnabled:Z

    if-eqz v2, :cond_0

    .line 5
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;

    .line 6
    iget-boolean v2, v2, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;->mLimited:Z

    if-nez v2, :cond_0

    .line 7
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 8
    :cond_1
    sget-object p0, Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;->M:Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public getActiveZoomEntityMap()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;",
            "Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomModel;->mZoomEntityMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 3
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;

    .line 4
    iget-boolean v2, v2, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;->mEnabled:Z

    if-eqz v2, :cond_0

    .line 5
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getSegmentByCameraType(Lcom/motorola/camera/settings/CameraType;)Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomModel;->mZoomEntityMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;

    .line 3
    iget-object v1, v1, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;->mCameraType:Lcom/motorola/camera/settings/CameraType;

    if-ne v1, p1, :cond_0

    .line 4
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;

    return-object p0

    .line 5
    :cond_1
    sget-object p0, Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;->W:Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;

    return-object p0
.end method

.method public getZoomMinX(Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;)F
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomModel;->mZoomEntityMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;

    if-nez p0, :cond_0

    const/high16 p0, -0x40800000    # -1.0f

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;->getMinZoomX()F

    move-result p0

    :goto_0
    return p0
.end method

.method public isZoomEnabled(Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomModel;->mZoomEntityMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;

    if-eqz p0, :cond_0

    .line 2
    iget-boolean p0, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;->mEnabled:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isZoomLimited(Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomModel;->mZoomEntityMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;

    if-eqz p0, :cond_0

    .line 2
    iget-boolean p0, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;->mLimited:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setVideoRecording(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomModel;->mZoomEntityMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;

    invoke-virtual {v1, p1}, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;->setVideoRecording(Z)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomModel;->mListener:Lcom/motorola/camera/ui/widgets/gl/ZoomModel$Listener;

    if-eqz p0, :cond_1

    .line 4
    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;

    .line 5
    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mVideoRecording:Z

    .line 6
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mZoomModel:Lcom/motorola/camera/ui/widgets/gl/ZoomModel;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->updateToggleState(Lcom/motorola/camera/ui/widgets/gl/ZoomModel;)V

    :cond_1
    return-void
.end method

.method public setupZoomModel(Lcom/motorola/camera/settings/CameraType;)V
    .locals 6

    .line 1
    sget-object v0, Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;->UW:Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;

    sget-object v1, Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;->W:Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomModel;->mZoomEntityMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 2
    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomModel;->mCurrentCameraType:Lcom/motorola/camera/settings/CameraType;

    .line 3
    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsHelper;->isBackCameraType(Lcom/motorola/camera/settings/CameraType;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 4
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->hasBackMacroCamera()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomModel;->mZoomEntityMap:Ljava/util/Map;

    sget-object v2, Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;->M:Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;

    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/ZoomMacroEntity;

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomModel;->mCurrentCameraType:Lcom/motorola/camera/settings/CameraType;

    iget-boolean v5, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomModel;->mIsCliDisplay:Z

    invoke-direct {v3, v2, v4, v5}, Lcom/motorola/camera/ui/widgets/gl/ZoomMacroEntity;-><init>(Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;Lcom/motorola/camera/settings/CameraType;Z)V

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    :cond_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->hasBackWideCamera()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 7
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomModel;->mZoomEntityMap:Ljava/util/Map;

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/ZoomUWEntity;

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomModel;->mCurrentCameraType:Lcom/motorola/camera/settings/CameraType;

    iget-boolean v4, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomModel;->mIsCliDisplay:Z

    invoke-direct {v2, v0, v3, v4}, Lcom/motorola/camera/ui/widgets/gl/ZoomUWEntity;-><init>(Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;Lcom/motorola/camera/settings/CameraType;Z)V

    invoke-interface {p1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    :cond_1
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomModel;->mZoomEntityMap:Ljava/util/Map;

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/ZoomMainEntity;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomModel;->mCurrentCameraType:Lcom/motorola/camera/settings/CameraType;

    iget-boolean v3, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomModel;->mIsCliDisplay:Z

    invoke-direct {v0, v1, v2, v3}, Lcom/motorola/camera/ui/widgets/gl/ZoomMainEntity;-><init>(Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;Lcom/motorola/camera/settings/CameraType;Z)V

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->hasBackTeleCamera()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 10
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomModel;->mZoomEntityMap:Ljava/util/Map;

    sget-object v0, Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;->T:Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/ZoomTeleEntity;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomModel;->mCurrentCameraType:Lcom/motorola/camera/settings/CameraType;

    iget-boolean p0, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomModel;->mIsCliDisplay:Z

    invoke-direct {v1, v0, v2, p0}, Lcom/motorola/camera/ui/widgets/gl/ZoomTeleEntity;-><init>(Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;Lcom/motorola/camera/settings/CameraType;Z)V

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 11
    :cond_2
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->hasFrontUwCamera()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 12
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomModel;->mZoomEntityMap:Ljava/util/Map;

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/ZoomUWEntity;

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomModel;->mCurrentCameraType:Lcom/motorola/camera/settings/CameraType;

    iget-boolean v4, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomModel;->mIsCliDisplay:Z

    invoke-direct {v2, v0, v3, v4}, Lcom/motorola/camera/ui/widgets/gl/ZoomUWEntity;-><init>(Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;Lcom/motorola/camera/settings/CameraType;Z)V

    invoke-interface {p1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    :cond_3
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomModel;->mZoomEntityMap:Ljava/util/Map;

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/ZoomMainEntity;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomModel;->mCurrentCameraType:Lcom/motorola/camera/settings/CameraType;

    iget-boolean p0, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomModel;->mIsCliDisplay:Z

    invoke-direct {v0, v1, v2, p0}, Lcom/motorola/camera/ui/widgets/gl/ZoomMainEntity;-><init>(Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;Lcom/motorola/camera/settings/CameraType;Z)V

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "ZoomModel{mCurrentCameraType="

    .line 1
    invoke-static {v0}, Landroid/support/v4/media/RatingCompat$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomModel;->mCurrentCameraType:Lcom/motorola/camera/settings/CameraType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mZoomEntityMap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomModel;->mZoomEntityMap:Ljava/util/Map;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public updateZoomX(FZ)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomModel;->mListener:Lcom/motorola/camera/ui/widgets/gl/ZoomModel$Listener;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomModel;->mCurrentCameraType:Lcom/motorola/camera/settings/CameraType;

    sget-object v2, Lcom/motorola/camera/settings/CameraType;->BACK_MACRO:Lcom/motorola/camera/settings/CameraType;

    if-ne v1, v2, :cond_1

    .line 3
    sget-object p0, Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;->M:Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;

    invoke-virtual {v0, p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->onZoomChanged(Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;FZ)V

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/ZoomModel;->getActiveUnLimitedZoomEntityMap()Ljava/util/Map;

    move-result-object v1

    .line 5
    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v2, v3, :cond_2

    .line 6
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, v4

    check-cast v0, Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 8
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;

    .line 9
    iget-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomModel;->mCurrentCameraType:Lcom/motorola/camera/settings/CameraType;

    invoke-static {v5}, Lcom/motorola/camera/settings/SettingsManager;->isZoomBlendingCameraType(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 10
    invoke-virtual {v3}, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;->getMinZoomX()F

    move-result v5

    cmpl-float v5, p1, v5

    if-ltz v5, :cond_3

    .line 11
    iget-object v3, v3, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;->mZoomRatioRange:Landroid/util/Range;

    invoke-virtual {v3}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    cmpg-float v3, p1, v3

    if-gtz v3, :cond_3

    .line 12
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;

    goto :goto_0

    .line 13
    :cond_4
    iget-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomModel;->mCurrentCameraType:Lcom/motorola/camera/settings/CameraType;

    .line 14
    iget-object v6, v3, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;->mCameraType:Lcom/motorola/camera/settings/CameraType;

    if-ne v5, v6, :cond_3

    .line 15
    invoke-virtual {v3}, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;->getMinZoomX()F

    move-result v0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_5

    .line 16
    iget-object v0, v3, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;->mZoomRatioRange:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_6

    :cond_5
    move p2, v4

    .line 17
    :cond_6
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;

    :cond_7
    :goto_0
    if-nez v0, :cond_8

    const-string/jumbo v0, "updateZoomX: not found the targetSegment, cameraType:"

    .line 18
    invoke-static {v0}, Landroid/support/v4/media/RatingCompat$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomModel;->mCurrentCameraType:Lcom/motorola/camera/settings/CameraType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", zoom:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ZoomModel"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    sget-object v0, Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;->W:Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;

    .line 20
    :cond_8
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomModel;->mListener:Lcom/motorola/camera/ui/widgets/gl/ZoomModel$Listener;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;

    invoke-virtual {p0, v0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->onZoomChanged(Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;FZ)V

    return-void
.end method
