.class public final Lcom/motorola/camera/scenedetection/scene/FocusMode$AUTO;
.super Lcom/motorola/camera/scenedetection/scene/FocusMode;
.source "SceneImpl.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/scenedetection/scene/FocusMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AUTO"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/motorola/camera/scenedetection/scene/FocusMode;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public apply(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 0

    return-void
.end method

.method public revert(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 0

    return-void
.end method
